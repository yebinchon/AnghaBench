
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef TYPE_2__ video_t ;
typedef int uint32_t ;



uint32_t video_output_get_height(const video_t *video)
{
 return video ? video->info.height : 0;
}
