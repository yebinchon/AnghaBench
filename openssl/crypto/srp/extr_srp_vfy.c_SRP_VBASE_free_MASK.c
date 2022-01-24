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
struct TYPE_4__ {struct TYPE_4__* seed_key; int /*<<< orphan*/  gN_cache; int /*<<< orphan*/  users_pwd; } ;
typedef  TYPE_1__ SRP_VBASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SRP_user_pwd_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(SRP_VBASE *vb)
{
    if (!vb)
        return;
    FUNC2(vb->users_pwd, SRP_user_pwd_free);
    FUNC1(vb->gN_cache);
    FUNC0(vb->seed_key);
    FUNC0(vb);
}