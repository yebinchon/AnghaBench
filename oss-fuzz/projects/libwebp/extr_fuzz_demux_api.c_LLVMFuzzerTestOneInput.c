
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {int bitstream; } ;
typedef TYPE_1__ WebPMuxFrameInfo ;
typedef int WebPMuxError ;
typedef int WebPMuxAnimParams ;
typedef int WebPMux ;
typedef int WebPIterator ;
typedef int WebPDemuxer ;
typedef scalar_t__ WebPDemuxState ;
struct TYPE_10__ {size_t size; int * bytes; } ;
typedef TYPE_2__ WebPData ;
typedef int WebPChunkIterator ;


 scalar_t__ WEBP_DEMUX_PARSED_HEADER ;
 int WEBP_MUX_NOT_FOUND ;
 int WEBP_MUX_OK ;
 int WebPDataClear (int *) ;
 int WebPDataInit (TYPE_2__*) ;
 int * WebPDemux (TYPE_2__*) ;
 int WebPDemuxDelete (int *) ;
 scalar_t__ WebPDemuxGetChunk (int *,char*,int,int *) ;
 scalar_t__ WebPDemuxGetFrame (int *,int,int *) ;
 int WebPDemuxNextChunk (int *) ;
 int WebPDemuxNextFrame (int *) ;
 int * WebPDemuxPartial (TYPE_2__*,scalar_t__*) ;
 int WebPDemuxPrevChunk (int *) ;
 int WebPDemuxReleaseChunkIterator (int *) ;
 int WebPDemuxReleaseIterator (int *) ;
 int * WebPMuxCreate (TYPE_2__*,size_t) ;
 int WebPMuxDelete (int *) ;
 int WebPMuxGetAnimationParams (int *,int *) ;
 int WebPMuxGetChunk (int *,char*,TYPE_2__*) ;
 int WebPMuxGetFeatures (int *,int *) ;
 int WebPMuxGetFrame (int *,int,TYPE_1__*) ;
 int kFuzzFrameLimit ;

int LLVMFuzzerTestOneInput(const uint8_t* const data, size_t size) {
  WebPData webp_data;
  WebPDataInit(&webp_data);
  webp_data.size = size;
  webp_data.bytes = data;




  if (size & 1) {

    WebPMux* mux = WebPMuxCreate(&webp_data, size & 2);
    if (!mux) return 0;

    WebPData chunk;
    WebPMuxGetChunk(mux, "EXIF", &chunk);
    WebPMuxGetChunk(mux, "ICCP", &chunk);
    WebPMuxGetChunk(mux, "FUZZ", &chunk);

    uint32_t flags;
    WebPMuxGetFeatures(mux, &flags);

    WebPMuxAnimParams params;
    WebPMuxGetAnimationParams(mux, &params);

    WebPMuxError status;
    WebPMuxFrameInfo info;
    for (int i = 0; i < kFuzzFrameLimit; i++) {
      status = WebPMuxGetFrame(mux, i + 1, &info);
      if (status == WEBP_MUX_NOT_FOUND) {
        break;
      } else if (status == WEBP_MUX_OK) {
        WebPDataClear(&info.bitstream);
      }
    }

    WebPMuxDelete(mux);
  } else {

    WebPDemuxer* demux;
    if (size & 2) {
      WebPDemuxState state;
      demux = WebPDemuxPartial(&webp_data, &state);
      if (state < WEBP_DEMUX_PARSED_HEADER) {
        WebPDemuxDelete(demux);
        return 0;
      }
    } else {
      demux = WebPDemux(&webp_data);
      if (!demux) return 0;
    }

    WebPChunkIterator chunk_iter;
    if (WebPDemuxGetChunk(demux, "EXIF", 1, &chunk_iter)) {
      WebPDemuxNextChunk(&chunk_iter);
    }
    WebPDemuxReleaseChunkIterator(&chunk_iter);
    if (WebPDemuxGetChunk(demux, "ICCP", 0, &chunk_iter)) {
      WebPDemuxPrevChunk(&chunk_iter);
    }
    WebPDemuxReleaseChunkIterator(&chunk_iter);


    WebPIterator iter;
    if (WebPDemuxGetFrame(demux, 1, &iter)) {
      for (int i = 1; i < kFuzzFrameLimit; i++) {
        if (!WebPDemuxNextFrame(&iter)) break;
      }
    }

    WebPDemuxReleaseIterator(&iter);
    WebPDemuxDelete(demux);
  }

  return 0;
}
