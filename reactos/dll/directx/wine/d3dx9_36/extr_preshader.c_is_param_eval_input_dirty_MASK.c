#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  inputs; } ;
struct d3dx_param_eval {int /*<<< orphan*/  shader_inputs; TYPE_1__ pres; } ;
typedef  int /*<<< orphan*/  ULONG64 ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC1(struct d3dx_param_eval *peval, ULONG64 update_version)
{
    return FUNC0(&peval->pres.inputs, update_version)
            || FUNC0(&peval->shader_inputs, update_version);
}