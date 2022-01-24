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
struct wined3d_shader_src_param {int /*<<< orphan*/  swizzle; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const struct wined3d_shader_src_param *param,
        BOOL fixup, DWORD mask, char *swizzle_str)
{
    if (FUNC1(&param->reg))
        *swizzle_str = '\0';
    else
        FUNC0(param->swizzle, fixup, mask, swizzle_str);
}