
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_mux {int initialized; } ;


 int FFM_SUCCESS ;
 int ffmpeg_mux_free (struct ffmpeg_mux*) ;
 int ffmpeg_mux_init_internal (struct ffmpeg_mux*,int,char**) ;

__attribute__((used)) static int ffmpeg_mux_init(struct ffmpeg_mux *ffm, int argc, char *argv[])
{
 int ret = ffmpeg_mux_init_internal(ffm, argc, argv);
 if (ret != FFM_SUCCESS) {
  ffmpeg_mux_free(ffm);
  return ret;
 }

 ffm->initialized = 1;
 return ret;
}
