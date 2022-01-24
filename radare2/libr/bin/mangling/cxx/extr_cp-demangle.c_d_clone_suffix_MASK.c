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
 int /*<<< orphan*/  DEMANGLE_COMPONENT_CLONE ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,int) ; 
 struct demangle_component* FUNC3 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 struct demangle_component* FUNC4 (struct d_info*,char const*,int) ; 
 char* FUNC5 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC6 (struct d_info *di, struct demangle_component *encoding)
{
  const char *suffix = FUNC5 (di);
  const char *pend = suffix;
  struct demangle_component *n;

  if (*pend == '.' && (FUNC1 (pend[1]) || pend[1] == '_'))
    {
      pend += 2;
      while (FUNC1 (*pend) || *pend == '_')
	++pend;
    }
  while (*pend == '.' && FUNC0 (pend[1]))
    {
      pend += 2;
      while (FUNC0 (*pend))
	++pend;
    }
  FUNC2 (di, pend - suffix);
  n = FUNC4 (di, suffix, pend - suffix);
  return FUNC3 (di, DEMANGLE_COMPONENT_CLONE, encoding, n);
}