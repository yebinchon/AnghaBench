
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int path; void* has_audio; void* has_video; int hw; TYPE_5__* fmt; int buffering; int is_local_file; scalar_t__* format_name; } ;
typedef TYPE_2__ mp_media_t ;
struct TYPE_8__ {TYPE_2__* opaque; int callback; } ;
struct TYPE_10__ {TYPE_1__ interrupt_callback; } ;
typedef int AVInputFormat ;
typedef int AVDictionary ;


 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int av_dict_free (int **) ;
 int av_dict_set_int (int **,char*,int ,int ) ;
 int * av_find_input_format (scalar_t__*) ;
 TYPE_5__* avformat_alloc_context () ;
 scalar_t__ avformat_find_stream_info (TYPE_5__*,int *) ;
 int avformat_open_input (TYPE_5__**,int ,int *,int **) ;
 int blog (int ,char*,int ) ;
 int interrupt_callback ;
 void* mp_decode_init (TYPE_2__*,int ,int ) ;

__attribute__((used)) static bool init_avformat(mp_media_t *m)
{
 AVInputFormat *format = ((void*)0);

 if (m->format_name && *m->format_name) {
  format = av_find_input_format(m->format_name);
  if (!format)
   blog(LOG_INFO,
        "MP: Unable to find input format for "
        "'%s'",
        m->path);
 }

 AVDictionary *opts = ((void*)0);
 if (m->buffering && !m->is_local_file)
  av_dict_set_int(&opts, "buffer_size", m->buffering, 0);

 m->fmt = avformat_alloc_context();
 m->fmt->interrupt_callback.callback = interrupt_callback;
 m->fmt->interrupt_callback.opaque = m;

 int ret = avformat_open_input(&m->fmt, m->path, format,
          opts ? &opts : ((void*)0));
 av_dict_free(&opts);

 if (ret < 0) {
  blog(LOG_WARNING, "MP: Failed to open media: '%s'", m->path);
  return 0;
 }

 if (avformat_find_stream_info(m->fmt, ((void*)0)) < 0) {
  blog(LOG_WARNING, "MP: Failed to find stream info for '%s'",
       m->path);
  return 0;
 }

 m->has_video = mp_decode_init(m, AVMEDIA_TYPE_VIDEO, m->hw);
 m->has_audio = mp_decode_init(m, AVMEDIA_TYPE_AUDIO, m->hw);

 if (!m->has_video && !m->has_audio) {
  blog(LOG_WARNING,
       "MP: Could not initialize audio or video: "
       "'%s'",
       m->path);
  return 0;
 }

 return 1;
}
