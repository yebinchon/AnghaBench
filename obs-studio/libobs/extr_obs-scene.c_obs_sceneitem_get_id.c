
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef int int64_t ;


 int obs_ptr_valid (TYPE_1__ const*,char*) ;

int64_t obs_sceneitem_get_id(const obs_sceneitem_t *item)
{
 if (!obs_ptr_valid(item, "obs_sceneitem_get_id"))
  return 0;

 return item->id;
}
