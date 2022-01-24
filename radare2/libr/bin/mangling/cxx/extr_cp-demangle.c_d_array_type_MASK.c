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
 int /*<<< orphan*/  DEMANGLE_COMPONENT_ARRAY_TYPE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct d_info*,char) ; 
 struct demangle_component* FUNC4 (struct d_info*) ; 
 struct demangle_component* FUNC5 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC6 (struct d_info*,char const*,int) ; 
 char FUNC7 (struct d_info*) ; 
 char const* FUNC8 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC9 (struct d_info *di)
{
  char peek;
  struct demangle_component *dim;

  if (! FUNC3 (di, 'A'))
    return NULL;

  peek = FUNC7 (di);
  if (peek == '_')
    dim = NULL;
  else if (FUNC0 (peek))
    {
      const char *s;

      s = FUNC8 (di);
      do
	{
	  FUNC2 (di, 1);
	  peek = FUNC7 (di);
	}
      while (FUNC0 (peek));
      dim = FUNC6 (di, s, FUNC8 (di) - s);
      if (dim == NULL)
	return NULL;
    }
  else
    {
      dim = FUNC4 (di);
      if (dim == NULL)
	return NULL;
    }

  if (! FUNC3 (di, '_'))
    return NULL;

  return FUNC5 (di, DEMANGLE_COMPONENT_ARRAY_TYPE, dim,
		      FUNC1 (di));
}