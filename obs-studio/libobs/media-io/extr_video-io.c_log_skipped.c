
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total_frames; int skipped_frames; } ;
typedef TYPE_1__ video_t ;


 int LOG_INFO ;
 int blog (int ,char*,int ,int ,double) ;
 long os_atomic_load_long (int *) ;

__attribute__((used)) static void log_skipped(video_t *video)
{
 long skipped = os_atomic_load_long(&video->skipped_frames);
 double percentage_skipped =
  (double)skipped /
  (double)os_atomic_load_long(&video->total_frames) * 100.0;

 if (skipped)
  blog(LOG_INFO,
       "Video stopped, number of "
       "skipped frames due "
       "to encoding lag: "
       "%ld/%ld (%0.1f%%)",
       video->skipped_frames, video->total_frames,
       percentage_skipped);
}
