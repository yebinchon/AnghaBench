#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_6__ {int /*<<< orphan*/  expires; int /*<<< orphan*/  date; } ;
struct lwan_thread {TYPE_3__ date; TYPE_2__* lwan; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct lwan_thread *thread)
{
    time_t now = FUNC1(NULL);

    FUNC0(now, thread->date.date);
    FUNC0(now + (time_t)thread->lwan->config.expires,
                         thread->date.expires);
}