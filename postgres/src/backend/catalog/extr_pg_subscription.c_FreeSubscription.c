
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int publications; struct TYPE_4__* slotname; struct TYPE_4__* conninfo; struct TYPE_4__* name; } ;
typedef TYPE_1__ Subscription ;


 int list_free_deep (int ) ;
 int pfree (TYPE_1__*) ;

void
FreeSubscription(Subscription *sub)
{
 pfree(sub->name);
 pfree(sub->conninfo);
 if (sub->slotname)
  pfree(sub->slotname);
 list_free_deep(sub->publications);
 pfree(sub);
}
