
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int d_printing; } ;
struct d_print_info {scalar_t__ recursion; struct d_component_stack* component_stack; } ;
struct d_component_stack {struct d_component_stack* parent; struct demangle_component* dc; } ;


 scalar_t__ MAX_RECURSION_COUNT ;
 int d_print_comp_inner (struct d_print_info*,int,struct demangle_component*) ;
 int d_print_error (struct d_print_info*) ;

__attribute__((used)) static void
d_print_comp (struct d_print_info *dpi, int options,
       struct demangle_component *dc)
{
  struct d_component_stack self;
  if (dc == ((void*)0) || dc->d_printing > 1 || dpi->recursion > MAX_RECURSION_COUNT)
    {
      d_print_error (dpi);
      return;
    }

  dc->d_printing++;
  dpi->recursion++;

  self.dc = dc;
  self.parent = dpi->component_stack;
  dpi->component_stack = &self;

  d_print_comp_inner (dpi, options, dc);

  dpi->component_stack = self.parent;
  dc->d_printing--;
  dpi->recursion--;
}
