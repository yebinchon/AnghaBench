
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {scalar_t__ restart_on_activate; } ;


 int ffmpeg_source_start (struct ffmpeg_source*) ;

__attribute__((used)) static void ffmpeg_source_activate(void *data)
{
 struct ffmpeg_source *s = data;

 if (s->restart_on_activate)
  ffmpeg_source_start(s);
}
