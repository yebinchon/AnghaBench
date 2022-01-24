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
struct d_print_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_PARAM ; 
 scalar_t__ DEMANGLE_COMPONENT_INITIALIZER_LIST ; 
 scalar_t__ DEMANGLE_COMPONENT_NAME ; 
 scalar_t__ DEMANGLE_COMPONENT_QUAL_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,int,struct demangle_component*) ; 

__attribute__((used)) static void
FUNC2 (struct d_print_info *dpi, int options,
		 struct demangle_component *dc)
{
  int simple = 0;
  if (dc && (dc->type == DEMANGLE_COMPONENT_NAME
      || dc->type == DEMANGLE_COMPONENT_QUAL_NAME
      || dc->type == DEMANGLE_COMPONENT_INITIALIZER_LIST
      || dc->type == DEMANGLE_COMPONENT_FUNCTION_PARAM))
    simple = 1;
  if (!simple)
    FUNC0 (dpi, '(');
  FUNC1 (dpi, options, dc);
  if (!simple)
    FUNC0 (dpi, ')');
}