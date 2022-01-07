
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int bounds_align; } ;
typedef TYPE_1__ obs_sceneitem_t ;



uint32_t obs_sceneitem_get_bounds_alignment(const obs_sceneitem_t *item)
{
 return item ? item->bounds_align : 0;
}
