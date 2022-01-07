
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {struct obs_property* next; } ;
struct obs_properties {struct obs_property** last; } ;



__attribute__((used)) static inline void propertes_add(struct obs_properties *props,
     struct obs_property *p)
{
 *props->last = p;
 props->last = &p->next;
}
