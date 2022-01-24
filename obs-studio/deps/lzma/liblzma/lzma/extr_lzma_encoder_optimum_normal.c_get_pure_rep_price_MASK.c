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
typedef  size_t uint32_t ;
typedef  size_t lzma_lzma_state ;
struct TYPE_3__ {int /*<<< orphan*/ * is_rep2; int /*<<< orphan*/ * is_rep1; int /*<<< orphan*/ * is_rep0; int /*<<< orphan*/ ** is_rep0_long; } ;
typedef  TYPE_1__ lzma_coder ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static inline uint32_t
FUNC3(const lzma_coder *const coder, const uint32_t rep_index,
		const lzma_lzma_state state, uint32_t pos_state)
{
	uint32_t price;

	if (rep_index == 0) {
		price = FUNC0(coder->is_rep0[state]);
		price += FUNC1(coder->is_rep0_long[state][pos_state]);
	} else {
		price = FUNC1(coder->is_rep0[state]);

		if (rep_index == 1) {
			price += FUNC0(coder->is_rep1[state]);
		} else {
			price += FUNC1(coder->is_rep1[state]);
			price += FUNC2(coder->is_rep2[state],
					rep_index - 2);
		}
	}

	return price;
}