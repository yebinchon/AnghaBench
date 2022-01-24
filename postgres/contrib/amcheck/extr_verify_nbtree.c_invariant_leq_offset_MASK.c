#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_7__ {int /*<<< orphan*/  pivotsearch; } ;
struct TYPE_6__ {int /*<<< orphan*/  target; int /*<<< orphan*/  rel; } ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  TYPE_1__ BtreeCheckState ;
typedef  TYPE_2__* BTScanInsert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC2(BtreeCheckState *state, BTScanInsert key,
					 OffsetNumber upperbound)
{
	int32		cmp;

	FUNC0(key->pivotsearch);

	cmp = FUNC1(state->rel, key, state->target, upperbound);

	return cmp <= 0;
}