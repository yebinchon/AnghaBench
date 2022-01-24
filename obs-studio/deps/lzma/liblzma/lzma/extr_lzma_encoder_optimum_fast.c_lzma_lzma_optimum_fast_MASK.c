#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_10__ {int nice_len; int read_ahead; } ;
typedef  TYPE_1__ lzma_mf ;
struct TYPE_11__ {int longest_match_length; int matches_count; scalar_t__ const** reps; TYPE_6__* matches; } ;
typedef  TYPE_2__ lzma_coder ;
struct TYPE_12__ {int dist; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MATCH_LEN_MAX ; 
 int REP_DISTANCES ; 
 int FUNC0 (int) ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int const,int const) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (TYPE_1__*,int*,TYPE_6__*) ; 
 scalar_t__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__ const*,scalar_t__ const* const) ; 

extern void
FUNC9(lzma_coder *restrict coder, lzma_mf *restrict mf,
		uint32_t *restrict back_res, uint32_t *restrict len_res)
{
	const uint32_t nice_len = mf->nice_len;

	uint32_t len_main;
	uint32_t matches_count;
	if (mf->read_ahead == 0) {
		len_main = FUNC4(mf, &matches_count, coder->matches);
	} else {
		FUNC1(mf->read_ahead == 1);
		len_main = coder->longest_match_length;
		matches_count = coder->matches_count;
	}

	const uint8_t *buf = FUNC5(mf) - 1;
	const uint32_t buf_avail = FUNC7(FUNC3(mf) + 1, MATCH_LEN_MAX);

	if (buf_avail < 2) {
		// There's not enough input left to encode a match.
		*back_res = UINT32_MAX;
		*len_res = 1;
		return;
	}

	// Look for repeated matches; scan the previous four match distances
	uint32_t rep_len = 0;
	uint32_t rep_index = 0;

	for (uint32_t i = 0; i < REP_DISTANCES; ++i) {
		// Pointer to the beginning of the match candidate
		const uint8_t *const buf_back = buf - coder->reps[i] - 1;

		// If the first two bytes (2 == MATCH_LEN_MIN) do not match,
		// this rep is not useful.
		if (FUNC8(buf, buf_back))
			continue;

		// The first two bytes matched.
		// Calculate the length of the match.
		uint32_t len;
		for (len = 2; len < buf_avail
				&& buf[len] == buf_back[len]; ++len) ;

		// If we have found a repeated match that is at least
		// nice_len long, return it immediately.
		if (len >= nice_len) {
			*back_res = i;
			*len_res = len;
			FUNC6(mf, len - 1);
			return;
		}

		if (len > rep_len) {
			rep_index = i;
			rep_len = len;
		}
	}

	// We didn't find a long enough repeated match. Encode it as a normal
	// match if the match length is at least nice_len.
	if (len_main >= nice_len) {
		*back_res = coder->matches[matches_count - 1].dist
				+ REP_DISTANCES;
		*len_res = len_main;
		FUNC6(mf, len_main - 1);
		return;
	}

	uint32_t back_main = 0;
	if (len_main >= 2) {
		back_main = coder->matches[matches_count - 1].dist;

		while (matches_count > 1 && len_main ==
				coder->matches[matches_count - 2].len + 1) {
			if (!FUNC2(coder->matches[
						matches_count - 2].dist,
					back_main))
				break;

			--matches_count;
			len_main = coder->matches[matches_count - 1].len;
			back_main = coder->matches[matches_count - 1].dist;
		}

		if (len_main == 2 && back_main >= 0x80)
			len_main = 1;
	}

	if (rep_len >= 2) {
		if (rep_len + 1 >= len_main
				|| (rep_len + 2 >= len_main
					&& back_main > (FUNC0(1) << 9))
				|| (rep_len + 3 >= len_main
					&& back_main > (FUNC0(1) << 15))) {
			*back_res = rep_index;
			*len_res = rep_len;
			FUNC6(mf, rep_len - 1);
			return;
		}
	}

	if (len_main < 2 || buf_avail <= 2) {
		*back_res = UINT32_MAX;
		*len_res = 1;
		return;
	}

	// Get the matches for the next byte. If we find a better match,
	// the current byte is encoded as a literal.
	coder->longest_match_length = FUNC4(mf,
			&coder->matches_count, coder->matches);

	if (coder->longest_match_length >= 2) {
		const uint32_t new_dist = coder->matches[
				coder->matches_count - 1].dist;

		if ((coder->longest_match_length >= len_main
					&& new_dist < back_main)
				|| (coder->longest_match_length == len_main + 1
					&& !FUNC2(back_main, new_dist))
				|| (coder->longest_match_length > len_main + 1)
				|| (coder->longest_match_length + 1 >= len_main
					&& len_main >= 3
					&& FUNC2(new_dist, back_main))) {
			*back_res = UINT32_MAX;
			*len_res = 1;
			return;
		}
	}

	// In contrast to LZMA SDK, dictionary could not have been moved
	// between mf_find() calls, thus it is safe to just increment
	// the old buf pointer instead of recalculating it with mf_ptr().
	++buf;

	const uint32_t limit = len_main - 1;

	for (uint32_t i = 0; i < REP_DISTANCES; ++i) {
		const uint8_t *const buf_back = buf - coder->reps[i] - 1;

		if (FUNC8(buf, buf_back))
			continue;

		uint32_t len;
		for (len = 2; len < limit
				&& buf[len] == buf_back[len]; ++len) ;

		if (len >= limit) {
			*back_res = UINT32_MAX;
			*len_res = 1;
			return;
		}
	}

	*back_res = back_main + REP_DISTANCES;
	*len_res = len_main;
	FUNC6(mf, len_main - 2);
	return;
}