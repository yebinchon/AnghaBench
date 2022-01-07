
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XactEvent ;
struct TYPE_3__ {int arg; int (* callback ) (int ,int ) ;struct TYPE_3__* next; } ;
typedef TYPE_1__ XactCallbackItem ;


 TYPE_1__* Xact_callbacks ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
CallXactCallbacks(XactEvent event)
{
 XactCallbackItem *item;

 for (item = Xact_callbacks; item; item = item->next)
  item->callback(event, item->arg);
}
