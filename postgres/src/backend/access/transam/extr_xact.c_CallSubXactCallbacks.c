
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg; int (* callback ) (int ,int ,int ,int ) ;struct TYPE_3__* next; } ;
typedef int SubXactEvent ;
typedef TYPE_1__ SubXactCallbackItem ;
typedef int SubTransactionId ;


 TYPE_1__* SubXact_callbacks ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
CallSubXactCallbacks(SubXactEvent event,
      SubTransactionId mySubid,
      SubTransactionId parentSubid)
{
 SubXactCallbackItem *item;

 for (item = SubXact_callbacks; item; item = item->next)
  item->callback(event, mySubid, parentSubid, item->arg);
}
