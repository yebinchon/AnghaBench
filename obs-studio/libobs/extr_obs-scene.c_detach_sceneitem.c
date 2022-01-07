
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct obs_scene_item {TYPE_1__* parent; TYPE_3__* prev; TYPE_2__* next; } ;
struct TYPE_6__ {TYPE_2__* next; } ;
struct TYPE_5__ {TYPE_3__* prev; } ;
struct TYPE_4__ {TYPE_2__* first_item; } ;



__attribute__((used)) static inline void detach_sceneitem(struct obs_scene_item *item)
{
 if (item->prev)
  item->prev->next = item->next;
 else
  item->parent->first_item = item->next;

 if (item->next)
  item->next->prev = item->prev;

 item->parent = ((void*)0);
}
