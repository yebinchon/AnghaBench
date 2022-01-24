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
struct demangle_component {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_TEMPLATE_ARGLIST ; 
 int /*<<< orphan*/ * FUNC0 (struct demangle_component const*) ; 
 struct demangle_component* FUNC1 (struct demangle_component const*) ; 

__attribute__((used)) static int
FUNC2 (const struct demangle_component *dc)
{
  int count = 0;
  while (dc && dc->type == DEMANGLE_COMPONENT_TEMPLATE_ARGLIST
	 && FUNC0 (dc) != NULL)
    {
      ++count;
      dc = FUNC1 (dc);
    }
  return count;
}