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
struct d_info {int options; } ;

/* Variables and functions */
 int DMGL_PARAMS ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,char) ; 
 struct demangle_component* FUNC3 (struct d_info*,struct demangle_component*) ; 
 struct demangle_component* FUNC4 (struct d_info*,int) ; 
 char FUNC5 (struct d_info*) ; 
 char FUNC6 (struct d_info*) ; 

struct demangle_component *
FUNC7 (struct d_info *di, int top_level)
{
  struct demangle_component *p;

  if (! FUNC2 (di, '_')
      /* Allow missing _ if not at toplevel to work around a
	 bug in G++ abi-version=2 mangling; see the comment in
	 write_template_arg.  */
      && top_level)
    return NULL;
  if (! FUNC2 (di, 'Z'))
    return NULL;
  p = FUNC4 (di, top_level);

  /* If at top level and parsing parameters, check for a clone
     suffix.  */
  if (top_level && (di->options & DMGL_PARAMS) != 0)
    while (FUNC5 (di) == '.'
	   && (FUNC1 (FUNC6 (di))
	       || FUNC6 (di) == '_'
	       || FUNC0 (FUNC6 (di))))
      p = FUNC3 (di, p);

  return p;
}