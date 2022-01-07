
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_source_t ;
struct TYPE_3__ {int * source; } ;
typedef TYPE_1__ obs_sceneitem_t ;



obs_source_t *obs_sceneitem_get_source(const obs_sceneitem_t *item)
{
 return item ? item->source : ((void*)0);
}
