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
 int /*<<< orphan*/  FUNC0 (struct d_info*,char) ; 
 int FUNC1 (struct d_info*) ; 
 struct demangle_component* FUNC2 (struct d_info*,int) ; 

__attribute__((used)) static struct demangle_component *
FUNC3 (struct d_info *di)
{
  int param;

  if (! FUNC0 (di, 'T'))
    return NULL;

  param = FUNC1 (di);
  if (param < 0)
    return NULL;

  return FUNC2 (di, param);
}