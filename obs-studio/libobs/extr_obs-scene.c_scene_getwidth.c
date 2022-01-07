
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int cx; scalar_t__ custom_size; } ;
typedef TYPE_2__ obs_scene_t ;
struct TYPE_4__ {int base_width; } ;
struct TYPE_6__ {TYPE_1__ video; } ;


 TYPE_3__* obs ;

__attribute__((used)) static uint32_t scene_getwidth(void *data)
{
 obs_scene_t *scene = data;
 return scene->custom_size ? scene->cx : obs->video.base_width;
}
