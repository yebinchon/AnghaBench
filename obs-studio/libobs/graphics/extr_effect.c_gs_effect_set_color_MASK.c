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
typedef  int /*<<< orphan*/  uint32_t ;
struct vec4 {int dummy; } ;
typedef  int /*<<< orphan*/  gs_eparam_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vec4*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vec4*,int /*<<< orphan*/ ) ; 

void FUNC2(gs_eparam_t *param, uint32_t argb)
{
	struct vec4 v_color;
	FUNC1(&v_color, argb);
	FUNC0(param, &v_color, sizeof(struct vec4));
}