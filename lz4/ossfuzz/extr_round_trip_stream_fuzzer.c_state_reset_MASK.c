#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {scalar_t__ pos; } ;
struct TYPE_7__ {scalar_t__ pos; } ;
struct TYPE_6__ {scalar_t__ pos; } ;
struct TYPE_9__ {int /*<<< orphan*/  seed; TYPE_3__ roundTrip; TYPE_2__ compressed; TYPE_1__ data; int /*<<< orphan*/  dstream; int /*<<< orphan*/  level; int /*<<< orphan*/  cstreamHC; int /*<<< orphan*/  cstream; } ;
typedef  TYPE_4__ state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LZ4HC_CLEVEL_MAX ; 
 int /*<<< orphan*/  LZ4HC_CLEVEL_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(state_t* state, uint32_t seed)
{
    state->level = FUNC0(&seed, LZ4HC_CLEVEL_MIN, LZ4HC_CLEVEL_MAX);
    FUNC2(state->cstream);
    FUNC1(state->cstreamHC, state->level);
    FUNC3(state->dstream, NULL, 0);
    state->data.pos = 0;
    state->compressed.pos = 0;
    state->roundTrip.pos = 0;
    state->seed = seed;
}