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
 int /*<<< orphan*/  DEMANGLE_COMPONENT_VECTOR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,char) ; 
 struct demangle_component* FUNC3 (struct d_info*) ; 
 struct demangle_component* FUNC4 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC5 (struct d_info*) ; 
 char FUNC6 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC7 (struct d_info *di)
{
  char peek;
  struct demangle_component *dim;

  peek = FUNC6 (di);
  if (peek == '_')
    {
      FUNC1 (di, 1);
      dim = FUNC3 (di);
    }
  else
    dim = FUNC5 (di);

  if (dim == NULL)
    return NULL;

  if (! FUNC2 (di, '_'))
    return NULL;

  return FUNC4 (di, DEMANGLE_COMPONENT_VECTOR_TYPE, dim,
		      FUNC0 (di));
}