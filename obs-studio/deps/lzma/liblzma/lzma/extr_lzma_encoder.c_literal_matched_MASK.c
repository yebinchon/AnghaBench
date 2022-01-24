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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  probability ;
typedef  int /*<<< orphan*/  lzma_range_encoder ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static inline void
FUNC2(lzma_range_encoder *rc, probability *subcoder,
		uint32_t match_byte, uint32_t symbol)
{
	uint32_t offset = 0x100;
	symbol += FUNC0(1) << 8;

	do {
		match_byte <<= 1;
		const uint32_t match_bit = match_byte & offset;
		const uint32_t subcoder_index
				= offset + match_bit + (symbol >> 8);
		const uint32_t bit = (symbol >> 7) & 1;
		FUNC1(rc, &subcoder[subcoder_index], bit);

		symbol <<= 1;
		offset &= ~(match_byte ^ symbol);

	} while (symbol < (FUNC0(1) << 16));
}