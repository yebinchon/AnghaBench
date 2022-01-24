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
struct TYPE_2__ {size_t max; int /*<<< orphan*/ * inf; int /*<<< orphan*/ * fds; } ;
typedef  TYPE_1__ POLLJOB ;
typedef  int /*<<< orphan*/  POLLINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data) {
    POLLJOB *p = (POLLJOB *)data;

    size_t i;
    for(i = 0 ; i <= p->max ; i++) {
        POLLINFO *pi = &p->inf[i];
        FUNC1(pi);
    }

    FUNC0(p->fds);
    FUNC0(p->inf);
}