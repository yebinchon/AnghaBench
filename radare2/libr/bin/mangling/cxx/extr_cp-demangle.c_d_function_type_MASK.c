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
 int /*<<< orphan*/  FUNC0 (struct d_info*,int) ; 
 struct demangle_component* FUNC1 (struct d_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,char) ; 
 char FUNC3 (struct d_info*) ; 
 struct demangle_component* FUNC4 (struct d_info*,struct demangle_component*) ; 

__attribute__((used)) static struct demangle_component *
FUNC5 (struct d_info *di)
{
  struct demangle_component *ret;

  if (! FUNC2 (di, 'F'))
    return NULL;
  if (FUNC3 (di) == 'Y')
    {
      /* Function has C linkage.  We don't print this information.
	 FIXME: We should print it in verbose mode.  */
      FUNC0 (di, 1);
    }
  ret = FUNC1 (di, 1);
  ret = FUNC4 (di, ret);

  if (! FUNC2 (di, 'E'))
    return NULL;
  return ret;
}