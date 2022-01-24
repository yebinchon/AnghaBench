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
struct TYPE_3__ {int /*<<< orphan*/  users_pwd; } ;
typedef  int /*<<< orphan*/  SRP_user_pwd ;
typedef  TYPE_1__ SRP_VBASE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(SRP_VBASE *vb, SRP_user_pwd *user_pwd)
{
    if (FUNC0(vb->users_pwd, user_pwd) <= 0)
        return 0;
    return 1;
}