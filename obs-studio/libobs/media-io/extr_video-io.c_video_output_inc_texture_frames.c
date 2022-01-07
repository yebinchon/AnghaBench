
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total_frames; } ;
typedef TYPE_1__ video_t ;


 int os_atomic_inc_long (int *) ;

void video_output_inc_texture_frames(video_t *video)
{
 os_atomic_inc_long(&video->total_frames);
}
