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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  os_count_objects ; 
 int /*<<< orphan*/  os_each_object ; 

void
FUNC3(mrb_state *mrb)
{
  struct RClass *os = FUNC2(mrb, "ObjectSpace");
  FUNC1(mrb, os, "count_objects", os_count_objects, FUNC0(1));
  FUNC1(mrb, os, "each_object", os_each_object, FUNC0(1));
}