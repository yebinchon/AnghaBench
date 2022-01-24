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
typedef  size_t uint32_t ;
struct TYPE_8__ {unsigned int pb; unsigned int lp; int /*<<< orphan*/  lc; } ;
typedef  TYPE_3__ lzma_options_lzma ;
struct TYPE_7__ {int /*<<< orphan*/  high; int /*<<< orphan*/ * mid; int /*<<< orphan*/ * low; int /*<<< orphan*/  choice2; int /*<<< orphan*/  choice; } ;
struct TYPE_6__ {int /*<<< orphan*/  high; int /*<<< orphan*/ * mid; int /*<<< orphan*/ * low; int /*<<< orphan*/  choice2; int /*<<< orphan*/  choice; } ;
struct TYPE_9__ {unsigned int pos_mask; unsigned int literal_pos_mask; scalar_t__ len; scalar_t__ offset; scalar_t__ limit; scalar_t__ symbol; int /*<<< orphan*/ * probs; int /*<<< orphan*/  sequence; TYPE_2__ rep_len_decoder; TYPE_1__ match_len_decoder; int /*<<< orphan*/  pos_align; int /*<<< orphan*/ * pos_special; int /*<<< orphan*/ * pos_slot; int /*<<< orphan*/ * is_rep2; int /*<<< orphan*/ * is_rep1; int /*<<< orphan*/ * is_rep0; int /*<<< orphan*/ * is_rep; int /*<<< orphan*/ ** is_rep0_long; int /*<<< orphan*/ ** is_match; int /*<<< orphan*/  rc; scalar_t__ rep3; scalar_t__ rep2; scalar_t__ rep1; scalar_t__ rep0; int /*<<< orphan*/  state; int /*<<< orphan*/  literal_context_bits; int /*<<< orphan*/  literal; } ;
typedef  TYPE_4__ lzma_coder ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN_BITS ; 
 size_t END_POS_MODEL_INDEX ; 
 size_t FULL_DISTANCES ; 
 int /*<<< orphan*/  LEN_HIGH_BITS ; 
 int /*<<< orphan*/  LEN_LOW_BITS ; 
 int /*<<< orphan*/  LEN_MID_BITS ; 
 size_t LEN_TO_POS_STATES ; 
 int /*<<< orphan*/  POS_SLOT_BITS ; 
 int /*<<< orphan*/  SEQ_IS_MATCH ; 
 size_t STATES ; 
 int /*<<< orphan*/  STATE_LIT_LIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(lzma_coder *coder, const void *opt)
{
	const lzma_options_lzma *options = opt;

	// NOTE: We assume that lc/lp/pb are valid since they were
	// successfully decoded with lzma_lzma_decode_properties().

	// Calculate pos_mask. We don't need pos_bits as is for anything.
	coder->pos_mask = (1U << options->pb) - 1;

	// Initialize the literal decoder.
	FUNC2(coder->literal, options->lc, options->lp);

	coder->literal_context_bits = options->lc;
	coder->literal_pos_mask = (1U << options->lp) - 1;

	// State
	coder->state = STATE_LIT_LIT;
	coder->rep0 = 0;
	coder->rep1 = 0;
	coder->rep2 = 0;
	coder->rep3 = 0;
	coder->pos_mask = (1U << options->pb) - 1;

	// Range decoder
	FUNC3(coder->rc);

	// Bit and bittree decoders
	for (uint32_t i = 0; i < STATES; ++i) {
		for (uint32_t j = 0; j <= coder->pos_mask; ++j) {
			FUNC0(coder->is_match[i][j]);
			FUNC0(coder->is_rep0_long[i][j]);
		}

		FUNC0(coder->is_rep[i]);
		FUNC0(coder->is_rep0[i]);
		FUNC0(coder->is_rep1[i]);
		FUNC0(coder->is_rep2[i]);
	}

	for (uint32_t i = 0; i < LEN_TO_POS_STATES; ++i)
		FUNC1(coder->pos_slot[i], POS_SLOT_BITS);

	for (uint32_t i = 0; i < FULL_DISTANCES - END_POS_MODEL_INDEX; ++i)
		FUNC0(coder->pos_special[i]);

	FUNC1(coder->pos_align, ALIGN_BITS);

	// Len decoders (also bit/bittree)
	const uint32_t num_pos_states = 1U << options->pb;
	FUNC0(coder->match_len_decoder.choice);
	FUNC0(coder->match_len_decoder.choice2);
	FUNC0(coder->rep_len_decoder.choice);
	FUNC0(coder->rep_len_decoder.choice2);

	for (uint32_t pos_state = 0; pos_state < num_pos_states; ++pos_state) {
		FUNC1(coder->match_len_decoder.low[pos_state],
				LEN_LOW_BITS);
		FUNC1(coder->match_len_decoder.mid[pos_state],
				LEN_MID_BITS);

		FUNC1(coder->rep_len_decoder.low[pos_state],
				LEN_LOW_BITS);
		FUNC1(coder->rep_len_decoder.mid[pos_state],
				LEN_MID_BITS);
	}

	FUNC1(coder->match_len_decoder.high, LEN_HIGH_BITS);
	FUNC1(coder->rep_len_decoder.high, LEN_HIGH_BITS);

	coder->sequence = SEQ_IS_MATCH;
	coder->probs = NULL;
	coder->symbol = 0;
	coder->limit = 0;
	coder->offset = 0;
	coder->len = 0;

	return;
}