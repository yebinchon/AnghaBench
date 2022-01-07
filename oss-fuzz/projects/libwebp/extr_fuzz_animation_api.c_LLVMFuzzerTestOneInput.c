
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_12__ {int size; int bytes; } ;
struct TYPE_13__ {TYPE_1__ fragment; } ;
typedef TYPE_2__ WebPIterator ;
typedef int WebPDemuxer ;
struct TYPE_14__ {size_t size; int * bytes; } ;
typedef TYPE_3__ WebPData ;
struct TYPE_15__ {size_t use_threads; scalar_t__ color_mode; } ;
typedef TYPE_4__ WebPAnimDecoderOptions ;
typedef int WebPAnimDecoder ;
typedef scalar_t__ WEBP_CSP_MODE ;


 scalar_t__ MODE_BGRA ;
 size_t MODE_LAST ;
 scalar_t__ MODE_RGBA ;
 scalar_t__ MODE_bgrA ;
 scalar_t__ MODE_rgbA ;
 int WEBP_FF_CANVAS_HEIGHT ;
 int WEBP_FF_CANVAS_WIDTH ;
 int WebPAnimDecoderDelete (int *) ;
 int WebPAnimDecoderGetNext (int *,int **,int*) ;
 int * WebPAnimDecoderNew (TYPE_3__*,TYPE_4__*) ;
 int WebPAnimDecoderOptionsInit (TYPE_4__*) ;
 int WebPDataInit (TYPE_3__*) ;
 int * WebPDemux (TYPE_3__*) ;
 int WebPDemuxDelete (int * const) ;
 int WebPDemuxGetFrame (int * const,int,TYPE_2__*) ;
 size_t WebPDemuxGetI (int * const,int ) ;
 int WebPDemuxReleaseIterator (TYPE_2__*) ;
 scalar_t__ WebPGetInfo (int ,int ,int*,int*) ;
 int kFuzzFrameLimit ;
 size_t kFuzzPxLimit ;

int LLVMFuzzerTestOneInput(const uint8_t* const data, size_t size) {
  WebPData webp_data;
  WebPDataInit(&webp_data);
  webp_data.size = size;
  webp_data.bytes = data;


  WebPDemuxer* const demux = WebPDemux(&webp_data);
  if (!demux) return 0;
  const uint32_t cw = WebPDemuxGetI(demux, WEBP_FF_CANVAS_WIDTH);
  const uint32_t ch = WebPDemuxGetI(demux, WEBP_FF_CANVAS_HEIGHT);
  if ((size_t)cw * ch > kFuzzPxLimit) {
    WebPDemuxDelete(demux);
    return 0;
  }


  WebPIterator iter;
  for (int i = 0; i < kFuzzFrameLimit; i++) {
    if (!WebPDemuxGetFrame(demux, i + 1, &iter)) break;
    int w, h;
    if (WebPGetInfo(iter.fragment.bytes, iter.fragment.size, &w, &h)) {
      if ((size_t)w * h > kFuzzPxLimit) {
        WebPDemuxReleaseIterator(&iter);
        WebPDemuxDelete(demux);
        return 0;
      }
    }
  }

  WebPDemuxReleaseIterator(&iter);
  WebPDemuxDelete(demux);

  WebPAnimDecoderOptions dec_options;
  if (!WebPAnimDecoderOptionsInit(&dec_options)) return 0;

  dec_options.use_threads = size & 1;

  dec_options.color_mode = (WEBP_CSP_MODE)(size % MODE_LAST);
  if (dec_options.color_mode != MODE_BGRA &&
      dec_options.color_mode != MODE_rgbA &&
      dec_options.color_mode != MODE_bgrA) {
    dec_options.color_mode = MODE_RGBA;
  }

  WebPAnimDecoder* dec = WebPAnimDecoderNew(&webp_data, &dec_options);
  if (!dec) return 0;

  for (int i = 0; i < kFuzzFrameLimit; i++) {
    uint8_t* buf;
    int timestamp;
    if (!WebPAnimDecoderGetNext(dec, &buf, &timestamp)) break;
  }

  WebPAnimDecoderDelete(dec);
  return 0;
}
