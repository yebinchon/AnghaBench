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
struct demangle_component {int dummy; } ;
struct d_info {struct demangle_component* last_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TAGGED_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct d_info*,int) ; 
 struct demangle_component* FUNC1 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 char FUNC2 (struct d_info*) ; 
 struct demangle_component* FUNC3 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC4 (struct d_info *di, struct demangle_component *dc)
{
  struct demangle_component *hold_last_name;
  char peek;

  /* Preserve the last name, so the ABI tag doesn't clobber it.  */
  hold_last_name = di->last_name;

  while (peek = FUNC2 (di),
	 peek == 'B')
    {
      struct demangle_component *tag;
      FUNC0 (di, 1);
      tag = FUNC3 (di);
      dc = FUNC1 (di, DEMANGLE_COMPONENT_TAGGED_NAME, dc, tag);
    }

  di->last_name = hold_last_name;

  return dc;
}