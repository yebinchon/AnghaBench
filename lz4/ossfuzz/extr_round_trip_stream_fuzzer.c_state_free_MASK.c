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
struct TYPE_3__ {int /*<<< orphan*/  dstream; int /*<<< orphan*/  cstreamHC; int /*<<< orphan*/  cstream; int /*<<< orphan*/  roundTrip; int /*<<< orphan*/  compressed; } ;
typedef  TYPE_1__ state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(state_t state)
{
    FUNC3(state.compressed);
    FUNC3(state.roundTrip);
    FUNC0(state.cstream);
    FUNC2(state.cstreamHC);
    FUNC1(state.dstream);
}