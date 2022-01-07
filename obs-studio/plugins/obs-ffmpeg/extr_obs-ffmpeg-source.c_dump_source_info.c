
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {scalar_t__ close_when_inactive; scalar_t__ restart_on_activate; scalar_t__ is_clear_on_media_end; scalar_t__ is_hw_decoding; scalar_t__ is_looping; int speed_percent; } ;


 int FF_BLOG (int ,char*,char const*,char const*,int ,char*,char*,char*,char*,char*) ;
 int LOG_INFO ;

__attribute__((used)) static void dump_source_info(struct ffmpeg_source *s, const char *input,
        const char *input_format)
{
 FF_BLOG(LOG_INFO,
  "settings:\n"
  "\tinput:                   %s\n"
  "\tinput_format:            %s\n"
  "\tspeed:                   %d\n"
  "\tis_looping:              %s\n"
  "\tis_hw_decoding:          %s\n"
  "\tis_clear_on_media_end:   %s\n"
  "\trestart_on_activate:     %s\n"
  "\tclose_when_inactive:     %s",
  input ? input : "(null)",
  input_format ? input_format : "(null)", s->speed_percent,
  s->is_looping ? "yes" : "no", s->is_hw_decoding ? "yes" : "no",
  s->is_clear_on_media_end ? "yes" : "no",
  s->restart_on_activate ? "yes" : "no",
  s->close_when_inactive ? "yes" : "no");
}
