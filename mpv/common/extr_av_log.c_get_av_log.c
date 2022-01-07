
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {int class_name; } ;
struct TYPE_6__ {TYPE_4__* codec; } ;
struct TYPE_5__ {scalar_t__ iformat; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVClass ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ av_codec_is_decoder (TYPE_4__*) ;
 struct mp_log* log_decaudio ;
 struct mp_log* log_decvideo ;
 struct mp_log* log_demuxer ;
 struct mp_log* log_root ;
 int mp_warn (struct mp_log*,char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static struct mp_log *get_av_log(void *ptr)
{
    if (!ptr)
        return log_root;

    AVClass *avc = *(AVClass **)ptr;
    if (!avc) {
        mp_warn(log_root,
               "av_log callback called with bad parameters (NULL AVClass).\n"
               "This is a bug in one of Libav/FFmpeg libraries used.\n");
        return log_root;
    }

    if (!strcmp(avc->class_name, "AVCodecContext")) {
        AVCodecContext *s = ptr;
        if (s->codec) {
            if (s->codec->type == AVMEDIA_TYPE_AUDIO) {
                if (av_codec_is_decoder(s->codec))
                    return log_decaudio;
            } else if (s->codec->type == AVMEDIA_TYPE_VIDEO) {
                if (av_codec_is_decoder(s->codec))
                    return log_decvideo;
            }
        }
    }

    if (!strcmp(avc->class_name, "AVFormatContext")) {
        AVFormatContext *s = ptr;
        if (s->iformat)
            return log_demuxer;
    }

    return log_root;
}
