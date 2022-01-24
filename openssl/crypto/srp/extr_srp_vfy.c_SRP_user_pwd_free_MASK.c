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
struct TYPE_4__ {struct TYPE_4__* info; struct TYPE_4__* id; int /*<<< orphan*/  v; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ SRP_user_pwd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(SRP_user_pwd *user_pwd)
{
    if (user_pwd == NULL)
        return;
    FUNC1(user_pwd->s);
    FUNC0(user_pwd->v);
    FUNC2(user_pwd->id);
    FUNC2(user_pwd->info);
    FUNC2(user_pwd);
}