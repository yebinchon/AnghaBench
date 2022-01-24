#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t free; size_t size; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * buf_pos; } ;
typedef  TYPE_1__ _store_wbuf ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 

__attribute__((used)) static _store_wbuf *FUNC3(size_t size) {
    _store_wbuf *b = FUNC0(1, sizeof(_store_wbuf));
    if (b == NULL)
        return NULL;
    b->buf = FUNC2(size);
    if (b->buf == NULL) {
        FUNC1(b);
        return NULL;
    }
    b->buf_pos = b->buf;
    b->free = size;
    b->size = size;
    return b;
}