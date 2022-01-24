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
struct TYPE_3__ {size_t len; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(void *talloc_ctx, bstr *s, size_t append_min)
{
    size_t size = FUNC2(s->start);
    FUNC1(s->len <= size);
    if (append_min > size - s->len) {
        if (append_min < size)
            append_min = size; // preallocate in power of 2s
        if (size >= SIZE_MAX / 2 || append_min >= SIZE_MAX / 2)
            FUNC0(); // oom
        s->start = FUNC3(talloc_ctx, s->start, size + append_min);
    }
}