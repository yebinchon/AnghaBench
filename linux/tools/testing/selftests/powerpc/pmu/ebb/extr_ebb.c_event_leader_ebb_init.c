
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exclusive; int pinned; } ;
struct event {TYPE_1__ attr; } ;


 int event_ebb_init (struct event*) ;

void event_leader_ebb_init(struct event *e)
{
 event_ebb_init(e);

 e->attr.exclusive = 1;
 e->attr.pinned = 1;
}
