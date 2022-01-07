
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total_frames; int skipped_frames; } ;
typedef TYPE_1__ video_t ;


 int os_atomic_set_long (int *,int ) ;

__attribute__((used)) static inline void reset_frames(video_t *video)
{
 os_atomic_set_long(&video->skipped_frames, 0);
 os_atomic_set_long(&video->total_frames, 0);
}
