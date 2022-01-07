
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float rot; } ;
typedef TYPE_1__ obs_sceneitem_t ;



float obs_sceneitem_get_rot(const obs_sceneitem_t *item)
{
 return item ? item->rot : 0.0f;
}
