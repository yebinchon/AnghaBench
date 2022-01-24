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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,int) ; 

__attribute__((used)) static mrb_bool
FUNC2(mrb_state *mrb, const char *name, mrb_int len)
{
  return len > 2 && name[0] == '@' && name[1] == '@' &&
         !FUNC0(name[2]) && FUNC1(name+2, len-2);
}