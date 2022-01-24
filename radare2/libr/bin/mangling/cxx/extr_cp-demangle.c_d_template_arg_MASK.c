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
 struct demangle_component* FUNC0 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,char) ; 
 struct demangle_component* FUNC3 (struct d_info*) ; 
 struct demangle_component* FUNC4 (struct d_info*) ; 
 int FUNC5 (struct d_info*) ; 
 struct demangle_component* FUNC6 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC7 (struct d_info *di)
{
  struct demangle_component *ret;

  switch (FUNC5 (di))
    {
    case 'X':
      FUNC1 (di, 1);
      ret = FUNC4 (di);
      if (! FUNC2 (di, 'E'))
	return NULL;
      return ret;

    case 'L':
      return FUNC3 (di);

    case 'I':
    case 'J':
      /* An argument pack.  */
      return FUNC6 (di);

    default:
      return FUNC0 (di);
    }
}