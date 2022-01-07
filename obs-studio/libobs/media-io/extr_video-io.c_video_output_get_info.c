
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_output_info {int dummy; } ;
struct TYPE_3__ {struct video_output_info const info; } ;
typedef TYPE_1__ video_t ;



const struct video_output_info *video_output_get_info(const video_t *video)
{
 return video ? &video->info : ((void*)0);
}
