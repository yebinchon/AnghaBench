#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct matrix4 {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cur_value; } ;
typedef  TYPE_1__ gs_sparam_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct matrix4 const*,int) ; 

void FUNC1(gs_sparam_t *param, const struct matrix4 *val)
{
	FUNC0(param->cur_value, val, sizeof(*val));
}