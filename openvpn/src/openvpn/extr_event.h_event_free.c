
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (struct event_set*) ;} ;
struct event_set {TYPE_1__ func; } ;


 int stub1 (struct event_set*) ;

__attribute__((used)) static inline void
event_free(struct event_set *es)
{
    if (es)
    {
        (*es->func.free)(es);
    }
}
