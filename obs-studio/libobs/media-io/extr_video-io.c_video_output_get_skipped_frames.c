
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skipped_frames; } ;
typedef TYPE_1__ video_t ;
typedef int uint32_t ;


 int os_atomic_load_long (int *) ;

uint32_t video_output_get_skipped_frames(const video_t *video)
{
 return (uint32_t)os_atomic_load_long(&video->skipped_frames);
}
