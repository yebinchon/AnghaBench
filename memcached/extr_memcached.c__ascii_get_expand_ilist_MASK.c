#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item ;
struct TYPE_4__ {int isize; int /*<<< orphan*/ ** ilist; } ;
typedef  TYPE_1__ conn ;
struct TYPE_5__ {int /*<<< orphan*/  malloc_fails; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ **,int) ; 
 TYPE_2__ stats ; 

__attribute__((used)) static inline int FUNC3(conn *c, int i) {
    if (i >= c->isize) {
        item **new_list = FUNC2(c->ilist, sizeof(item *) * c->isize * 2);
        if (new_list) {
            c->isize *= 2;
            c->ilist = new_list;
        } else {
            FUNC0();
            stats.malloc_fails++;
            FUNC1();
            return -1;
        }
    }
    return 0;
}