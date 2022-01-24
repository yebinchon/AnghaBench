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
struct TYPE_3__ {size_t state; size_t* reps; int /*<<< orphan*/  fast_mode; int /*<<< orphan*/  rep_len_encoder; int /*<<< orphan*/  rc; int /*<<< orphan*/ * is_rep2; int /*<<< orphan*/ * is_rep1; int /*<<< orphan*/ * is_rep0; int /*<<< orphan*/ ** is_rep0_long; } ;
typedef  TYPE_1__ lzma_coder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 

__attribute__((used)) static inline void
FUNC4(lzma_coder *coder, const uint32_t pos_state,
		const uint32_t rep, const uint32_t len)
{
	if (rep == 0) {
		FUNC1(&coder->rc, &coder->is_rep0[coder->state], 0);
		FUNC1(&coder->rc,
				&coder->is_rep0_long[coder->state][pos_state],
				len != 1);
	} else {
		const uint32_t distance = coder->reps[rep];
		FUNC1(&coder->rc, &coder->is_rep0[coder->state], 1);

		if (rep == 1) {
			FUNC1(&coder->rc, &coder->is_rep1[coder->state], 0);
		} else {
			FUNC1(&coder->rc, &coder->is_rep1[coder->state], 1);
			FUNC1(&coder->rc, &coder->is_rep2[coder->state],
					rep - 2);

			if (rep == 3)
				coder->reps[3] = coder->reps[2];

			coder->reps[2] = coder->reps[1];
		}

		coder->reps[1] = coder->reps[0];
		coder->reps[0] = distance;
	}

	if (len == 1) {
		FUNC3(coder->state);
	} else {
		FUNC0(&coder->rc, &coder->rep_len_encoder, pos_state, len,
				coder->fast_mode);
		FUNC2(coder->state);
	}
}