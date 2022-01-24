#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {scalar_t__ pos; int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {scalar_t__ pos; int /*<<< orphan*/  buf; int /*<<< orphan*/  size; } ;
struct TYPE_7__ {TYPE_1__ roundTrip; TYPE_2__ data; int /*<<< orphan*/  seed; } ;
typedef  TYPE_3__ state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static size_t FUNC5(state_t* state)
{
    /* 64 KB is the max dict size, allow slightly beyond that to test trim. */
    uint32_t maxDictSize = FUNC3(70 * 1024, state->data.size);
    size_t const dictSize = FUNC2(&state->seed, 0, maxDictSize);
    FUNC0(2, "dictSize = %zu", dictSize);
    FUNC1(state->data.pos == 0);
    FUNC1(state->roundTrip.pos == 0);
    FUNC4(state->roundTrip.buf, state->data.buf, dictSize);
    state->data.pos += dictSize;
    state->roundTrip.pos += dictSize;
    return dictSize;
}