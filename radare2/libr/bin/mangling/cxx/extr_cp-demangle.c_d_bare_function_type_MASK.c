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
struct d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_FUNCTION_TYPE ; 
 struct demangle_component* FUNC0 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,int) ; 
 struct demangle_component* FUNC2 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 struct demangle_component* FUNC3 (struct d_info*) ; 
 char FUNC4 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC5 (struct d_info *di, int has_return_type)
{
  struct demangle_component *return_type;
  struct demangle_component *tl;
  char peek;

  /* Detect special qualifier indicating that the first argument
     is the return type.  */
  peek = FUNC4 (di);
  if (peek == 'J')
    {
      FUNC1 (di, 1);
      has_return_type = 1;
    }

  if (has_return_type)
    {
      return_type = FUNC0 (di);
      if (return_type == NULL)
	return NULL;
    }
  else
    return_type = NULL;

  tl = FUNC3 (di);
  if (tl == NULL)
    return NULL;

  return FUNC2 (di, DEMANGLE_COMPONENT_FUNCTION_TYPE,
		      return_type, tl);
}