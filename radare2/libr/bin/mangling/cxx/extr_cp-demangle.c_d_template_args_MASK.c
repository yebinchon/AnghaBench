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
 char FUNC1 (struct d_info*) ; 
 struct demangle_component* FUNC2 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC3 (struct d_info *di)
{
  if (FUNC1 (di) != 'I'
      && FUNC1 (di) != 'J')
    return NULL;
  FUNC0 (di, 1);

  return FUNC2 (di);
}