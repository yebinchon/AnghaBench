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
struct TYPE_4__ {int /*<<< orphan*/  hv; int /*<<< orphan*/  it; } ;
typedef  TYPE_1__ lru_bump_entry ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  buf; struct TYPE_5__* next; } ;
typedef  TYPE_2__ lru_bump_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* bump_buf_head ; 
 int /*<<< orphan*/  bump_buf_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(void) {
    lru_bump_buf *b;
    lru_bump_entry *be;
    unsigned int size;
    unsigned int todo;
    bool bumped = false;
    FUNC6(&bump_buf_lock);
    for (b = bump_buf_head; b != NULL; b=b->next) {
        FUNC6(&b->mutex);
        be = (lru_bump_entry *) FUNC0(b->buf, &size);
        FUNC7(&b->mutex);

        if (be == NULL) {
            continue;
        }
        todo = size;
        bumped = true;

        while (todo) {
            FUNC4(be->hv);
            FUNC3(be->it);
            FUNC2(be->it);
            FUNC5(be->hv);
            be++;
            todo -= sizeof(lru_bump_entry);
        }

        FUNC6(&b->mutex);
        be = (lru_bump_entry *) FUNC1(b->buf, size);
        FUNC7(&b->mutex);
    }
    FUNC7(&bump_buf_lock);
    return bumped;
}