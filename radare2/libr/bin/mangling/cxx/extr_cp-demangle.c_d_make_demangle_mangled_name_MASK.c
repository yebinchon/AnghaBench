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
 struct demangle_component* FUNC1 (struct d_info*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC2 (struct d_info*,char const*,int /*<<< orphan*/ ) ; 
 char FUNC3 (struct d_info*) ; 
 char FUNC4 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static struct demangle_component *
FUNC6 (struct d_info *di, const char *s)
{
  if (FUNC3 (di) != '_' || FUNC4 (di) != 'Z')
    return FUNC2 (di, s, FUNC5 (s));
  FUNC0 (di, 2);
  return FUNC1 (di, 0);
}