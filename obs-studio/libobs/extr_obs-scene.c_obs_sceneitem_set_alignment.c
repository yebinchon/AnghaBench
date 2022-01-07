
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int align; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int do_update_transform (TYPE_1__*) ;

void obs_sceneitem_set_alignment(obs_sceneitem_t *item, uint32_t alignment)
{
 if (item) {
  item->align = alignment;
  do_update_transform(item);
 }
}
