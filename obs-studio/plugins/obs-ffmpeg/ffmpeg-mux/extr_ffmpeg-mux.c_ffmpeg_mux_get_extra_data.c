
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tracks; scalar_t__ has_video; } ;
struct ffmpeg_mux {TYPE_1__ params; } ;


 int ffmpeg_mux_get_header (struct ffmpeg_mux*) ;

__attribute__((used)) static inline bool ffmpeg_mux_get_extra_data(struct ffmpeg_mux *ffm)
{
 if (ffm->params.has_video) {
  if (!ffmpeg_mux_get_header(ffm)) {
   return 0;
  }
 }

 for (int i = 0; i < ffm->params.tracks; i++) {
  if (!ffmpeg_mux_get_header(ffm)) {
   return 0;
  }
 }

 return 1;
}
