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
struct TYPE_5__ {size_t size; size_t len; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  BUFFER_OVERFLOW_EOF ;
typedef  TYPE_1__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_BUFFER ; 
 size_t WEB_DATA_LENGTH_INCREASE_STEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 

void FUNC4(BUFFER *b, size_t free_size_required) {
    FUNC0(b);

    size_t left = b->size - b->len;

    if(left >= free_size_required) return;

    size_t increase = free_size_required - left;
    if(increase < WEB_DATA_LENGTH_INCREASE_STEP) increase = WEB_DATA_LENGTH_INCREASE_STEP;

    FUNC2(D_WEB_BUFFER, "Increasing data buffer from size %zu to %zu.", b->size, b->size + increase);

    b->buffer = FUNC3(b->buffer, b->size + increase + sizeof(BUFFER_OVERFLOW_EOF) + 2);
    b->size += increase;

    FUNC1(b);
    FUNC0(b);
}