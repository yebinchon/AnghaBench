#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* jsonsl_jpr_t ;
struct TYPE_4__ {struct TYPE_4__* orig; struct TYPE_4__* basestr; struct TYPE_4__* components; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(jsonsl_jpr_t jpr)
{
    FUNC0(jpr->components);
    FUNC0(jpr->basestr);
    FUNC0(jpr->orig);
    FUNC0(jpr);
}