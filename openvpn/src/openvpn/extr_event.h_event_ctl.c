
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ctl ) (struct event_set*,int ,unsigned int,void*) ;} ;
struct event_set {TYPE_1__ func; } ;
typedef int event_t ;


 int stub1 (struct event_set*,int ,unsigned int,void*) ;

__attribute__((used)) static inline void
event_ctl(struct event_set *es, event_t event, unsigned int rwflags, void *arg)
{
    (*es->func.ctl)(es, event, rwflags, arg);
}
