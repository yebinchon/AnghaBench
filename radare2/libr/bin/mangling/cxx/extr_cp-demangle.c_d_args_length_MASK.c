#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  struct demangle_component {scalar_t__ type; } const demangle_component ;
struct d_print_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_PACK_EXPANSION ; 
 scalar_t__ DEMANGLE_COMPONENT_TEMPLATE_ARGLIST ; 
 struct demangle_component const* FUNC0 (struct d_print_info*,struct demangle_component const*) ; 
 struct demangle_component const* FUNC1 (struct demangle_component const*) ; 
 scalar_t__ FUNC2 (struct demangle_component const*) ; 
 struct demangle_component const* FUNC3 (struct demangle_component const*) ; 

__attribute__((used)) static int
FUNC4 (struct d_print_info *dpi, const struct demangle_component *dc)
{
  int count = 0;
  for (; dc && dc->type == DEMANGLE_COMPONENT_TEMPLATE_ARGLIST;
       dc = FUNC3 (dc))
    {
      struct demangle_component *elt = FUNC1 (dc);
      if (elt == NULL)
	break;
      if (elt->type == DEMANGLE_COMPONENT_PACK_EXPANSION)
	{
	  struct demangle_component *a = FUNC0 (dpi, FUNC1 (elt));
	  count += FUNC2 (a);
	}
      else
	++count;
    }
  return count;
}