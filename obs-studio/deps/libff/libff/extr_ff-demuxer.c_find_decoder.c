
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ is_hw_decoding; } ;
struct ff_demuxer {TYPE_1__ options; } ;
struct TYPE_14__ {int refcounted_frames; scalar_t__ codec_id; int thread_count; TYPE_3__* opaque; int get_format; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {TYPE_4__* codec; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVHWAccel ;
typedef int AVGetFormatCb ;
typedef int AVDictionary ;
typedef TYPE_4__ AVCodecContext ;
typedef int AVCodec ;


 scalar_t__ AV_CODEC_ID_JPEG2000 ;
 scalar_t__ AV_CODEC_ID_PNG ;
 scalar_t__ AV_CODEC_ID_TIFF ;
 scalar_t__ AV_CODEC_ID_VP8 ;
 scalar_t__ AV_CODEC_ID_VP9 ;
 scalar_t__ AV_CODEC_ID_WEBP ;
 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*,scalar_t__) ;
 int * avcodec_find_decoder (scalar_t__) ;
 int * avcodec_find_decoder_by_name (char*) ;
 scalar_t__ avcodec_open2 (TYPE_4__*,int *,int **) ;
 TYPE_3__* find_hwaccel_codec (TYPE_4__*) ;
 int get_hwaccel_format ;
 int initialize_decoder (struct ff_demuxer*,TYPE_4__*,TYPE_2__*,int) ;

__attribute__((used)) static bool find_decoder(struct ff_demuxer *demuxer, AVStream *stream)
{
 AVCodecContext *codec_context = ((void*)0);
 AVCodec *codec = ((void*)0);
 AVDictionary *options_dict = ((void*)0);
 int ret;

 bool hwaccel_decoder = 0;
 codec_context = stream->codec;



 codec_context->refcounted_frames = 1;


 if (codec_context->codec_id == AV_CODEC_ID_PNG ||
     codec_context->codec_id == AV_CODEC_ID_TIFF ||
     codec_context->codec_id == AV_CODEC_ID_JPEG2000 ||
     codec_context->codec_id == AV_CODEC_ID_WEBP)
  codec_context->thread_count = 1;

 if (demuxer->options.is_hw_decoding) {
  AVHWAccel *hwaccel = find_hwaccel_codec(codec_context);

  if (hwaccel) {
   AVCodec *codec_vda =
           avcodec_find_decoder_by_name(hwaccel->name);

   if (codec_vda != ((void*)0)) {
    AVGetFormatCb original_get_format =
            codec_context->get_format;

    codec_context->get_format = get_hwaccel_format;
    codec_context->opaque = hwaccel;

    ret = avcodec_open2(codec_context, codec_vda,
                        &options_dict);
    if (ret < 0) {
     av_log(((void*)0), AV_LOG_WARNING,
            "no hardware decoder found for"
            " codec with id %d",
            codec_context->codec_id);
     codec_context->get_format =
             original_get_format;
     codec_context->opaque = ((void*)0);
    } else {
     codec = codec_vda;
     hwaccel_decoder = 1;
    }
   }
  }
 }

 if (codec == ((void*)0)) {
  if (codec_context->codec_id == AV_CODEC_ID_VP8)
   codec = avcodec_find_decoder_by_name("libvpx");
  else if (codec_context->codec_id == AV_CODEC_ID_VP9)
   codec = avcodec_find_decoder_by_name("libvpx-vp9");

  if (!codec)
   codec = avcodec_find_decoder(codec_context->codec_id);
  if (codec == ((void*)0)) {
   av_log(((void*)0), AV_LOG_WARNING,
          "no decoder found for"
          " codec with id %d",
          codec_context->codec_id);
   return 0;
  }
  if (avcodec_open2(codec_context, codec, &options_dict) < 0) {
   av_log(((void*)0), AV_LOG_WARNING,
          "unable to open decoder"
          " with codec id %d",
          codec_context->codec_id);
   return 0;
  }
 }

 return initialize_decoder(demuxer, codec_context, stream,
                           hwaccel_decoder);
}
