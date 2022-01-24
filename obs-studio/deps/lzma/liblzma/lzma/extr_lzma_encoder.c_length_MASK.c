#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lzma_range_encoder ;
struct TYPE_4__ {scalar_t__* counters; int /*<<< orphan*/  high; int /*<<< orphan*/  choice2; int /*<<< orphan*/ * mid; int /*<<< orphan*/  choice; int /*<<< orphan*/ * low; } ;
typedef  TYPE_1__ lzma_length_encoder ;

/* Variables and functions */
 int /*<<< orphan*/  LEN_HIGH_BITS ; 
 int /*<<< orphan*/  LEN_LOW_BITS ; 
 scalar_t__ LEN_LOW_SYMBOLS ; 
 int /*<<< orphan*/  LEN_MID_BITS ; 
 scalar_t__ LEN_MID_SYMBOLS ; 
 scalar_t__ MATCH_LEN_MAX ; 
 scalar_t__ MATCH_LEN_MIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC4(lzma_range_encoder *rc, lzma_length_encoder *lc,
		const uint32_t pos_state, uint32_t len, const bool fast_mode)
{
	FUNC0(len <= MATCH_LEN_MAX);
	len -= MATCH_LEN_MIN;

	if (len < LEN_LOW_SYMBOLS) {
		FUNC2(rc, &lc->choice, 0);
		FUNC3(rc, lc->low[pos_state], LEN_LOW_BITS, len);
	} else {
		FUNC2(rc, &lc->choice, 1);
		len -= LEN_LOW_SYMBOLS;

		if (len < LEN_MID_SYMBOLS) {
			FUNC2(rc, &lc->choice2, 0);
			FUNC3(rc, lc->mid[pos_state], LEN_MID_BITS, len);
		} else {
			FUNC2(rc, &lc->choice2, 1);
			len -= LEN_MID_SYMBOLS;
			FUNC3(rc, lc->high, LEN_HIGH_BITS, len);
		}
	}

	// Only getoptimum uses the prices so don't update the table when
	// in fast mode.
	if (!fast_mode)
		if (--lc->counters[pos_state] == 0)
			FUNC1(lc, pos_state);
}