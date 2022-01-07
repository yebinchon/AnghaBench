
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {scalar_t__ d_printing; } ;
struct d_info {size_t next_comp; size_t num_comps; struct demangle_component* comps; } ;



__attribute__((used)) static struct demangle_component *
d_make_empty (struct d_info *di)
{
  struct demangle_component *p;

  if (di->next_comp >= di->num_comps)
    return ((void*)0);
  p = &di->comps[di->next_comp];
  p->d_printing = 0;
  ++di->next_comp;
  return p;
}
