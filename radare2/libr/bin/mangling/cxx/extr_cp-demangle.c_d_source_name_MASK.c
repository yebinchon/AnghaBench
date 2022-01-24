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
struct d_info {struct demangle_component* last_name; } ;

/* Variables and functions */
 struct demangle_component* FUNC0 (struct d_info*,int) ; 
 int FUNC1 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC2 (struct d_info *di)
{
  int len;
  struct demangle_component *ret;

  len = FUNC1 (di);
  if (len <= 0)
    return NULL;
  ret = FUNC0 (di, len);
  di->last_name = ret;
  return ret;
}