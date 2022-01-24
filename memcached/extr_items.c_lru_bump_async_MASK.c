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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  hv; int /*<<< orphan*/ * it; } ;
typedef  TYPE_1__ lru_bump_entry ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dropped; int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ lru_bump_buf ;
typedef  int /*<<< orphan*/  item ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(lru_bump_buf *b, item *it, uint32_t hv) {
    bool ret = true;
    FUNC5(it);
    FUNC2(&b->mutex);
    lru_bump_entry *be = (lru_bump_entry *) FUNC1(b->buf, sizeof(lru_bump_entry));
    if (be != NULL) {
        be->it = it;
        be->hv = hv;
        if (FUNC0(b->buf, sizeof(lru_bump_entry)) == 0) {
            ret = false;
            b->dropped++;
        }
    } else {
        ret = false;
        b->dropped++;
    }
    if (!ret) {
        FUNC4(it);
    }
    FUNC3(&b->mutex);
    return ret;
}