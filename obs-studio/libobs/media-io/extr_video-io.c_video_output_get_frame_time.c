
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_time; } ;
typedef TYPE_1__ video_t ;
typedef int uint64_t ;



uint64_t video_output_get_frame_time(const video_t *video)
{
 return video ? video->frame_time : 0;
}
