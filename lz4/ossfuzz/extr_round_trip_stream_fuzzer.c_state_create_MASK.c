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
struct TYPE_4__ {char const* buf; size_t size; scalar_t__ pos; } ;
struct TYPE_5__ {int /*<<< orphan*/  dstream; int /*<<< orphan*/  cstream; int /*<<< orphan*/  cstreamHC; void* roundTrip; void* compressed; TYPE_1__ data; int /*<<< orphan*/  seed; } ;
typedef  TYPE_2__ state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (size_t) ; 

state_t FUNC6(char const* data, size_t size, uint32_t seed)
{
    state_t state;

    state.seed = seed;

    state.data.buf = (char const*)data;
    state.data.size = size;
    state.data.pos = 0;

    /* Extra margin because we are streaming. */
    state.compressed = FUNC5(1024 + 2 * FUNC1(size));
    state.roundTrip = FUNC5(size);

    state.cstream = FUNC2();
    FUNC0(state.cstream);
    state.cstreamHC = FUNC4();
    FUNC0(state.cstream);
    state.dstream = FUNC3();
    FUNC0(state.dstream);

    return state;
}