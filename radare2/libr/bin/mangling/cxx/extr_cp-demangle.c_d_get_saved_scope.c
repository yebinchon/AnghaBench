
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_saved_scope {struct demangle_component const* container; } ;
struct d_print_info {int next_saved_scope; struct d_saved_scope* saved_scopes; } ;



__attribute__((used)) static struct d_saved_scope *
d_get_saved_scope (struct d_print_info *dpi,
     const struct demangle_component *container)
{
  int i;

  for (i = 0; i < dpi->next_saved_scope; i++)
    if (dpi->saved_scopes[i].container == container)
      return &dpi->saved_scopes[i];

  return ((void*)0);
}
