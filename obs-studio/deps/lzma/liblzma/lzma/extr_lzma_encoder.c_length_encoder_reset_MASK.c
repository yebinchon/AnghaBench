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
typedef  size_t uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  high; int /*<<< orphan*/ * mid; int /*<<< orphan*/ * low; int /*<<< orphan*/  choice2; int /*<<< orphan*/  choice; } ;
typedef  TYPE_1__ lzma_length_encoder ;

/* Variables and functions */
 int /*<<< orphan*/  LEN_HIGH_BITS ; 
 int /*<<< orphan*/  LEN_LOW_BITS ; 
 int /*<<< orphan*/  LEN_MID_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 

__attribute__((used)) static void
FUNC3(lzma_length_encoder *lencoder,
		const uint32_t num_pos_states, const bool fast_mode)
{
	FUNC0(lencoder->choice);
	FUNC0(lencoder->choice2);

	for (size_t pos_state = 0; pos_state < num_pos_states; ++pos_state) {
		FUNC1(lencoder->low[pos_state], LEN_LOW_BITS);
		FUNC1(lencoder->mid[pos_state], LEN_MID_BITS);
	}

	FUNC1(lencoder->high, LEN_HIGH_BITS);

	if (!fast_mode)
		for (size_t pos_state = 0; pos_state < num_pos_states;
				++pos_state)
			FUNC2(lencoder, pos_state);

	return;
}