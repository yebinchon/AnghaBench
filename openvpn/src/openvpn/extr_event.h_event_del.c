
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* del ) (struct event_set*,int ) ;} ;
struct event_set {TYPE_1__ func; } ;
typedef int event_t ;


 int stub1 (struct event_set*,int ) ;

__attribute__((used)) static inline void
event_del(struct event_set *es, event_t event)
{
    (*es->func.del)(es, event);
}
