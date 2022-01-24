#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  probability ;

/* Variables and functions */
 unsigned int LITERAL_CODER_SIZE ; 
 unsigned int LZMA_LCLP_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(probability (*probs)[LITERAL_CODER_SIZE],
		uint32_t lc, uint32_t lp)
{
	FUNC0(lc + lp <= LZMA_LCLP_MAX);

	const uint32_t coders = 1U << (lc + lp);

	for (uint32_t i = 0; i < coders; ++i)
		for (uint32_t j = 0; j < LITERAL_CODER_SIZE; ++j)
			FUNC1(probs[i][j]);

	return;
}