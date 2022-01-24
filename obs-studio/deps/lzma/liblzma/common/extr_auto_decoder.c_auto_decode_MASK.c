#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  const lzma_ret ;
struct TYPE_6__ {int /*<<< orphan*/  coder; int /*<<< orphan*/  const (* code ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const*,size_t*,size_t,int*,size_t*,size_t,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int sequence; int flags; TYPE_2__ next; int /*<<< orphan*/  memlimit; } ;
typedef  TYPE_1__ lzma_coder ;
typedef  int /*<<< orphan*/  lzma_allocator ;
typedef  int /*<<< orphan*/  lzma_action ;

/* Variables and functions */
 int LZMA_CONCATENATED ; 
 int /*<<< orphan*/  const LZMA_DATA_ERROR ; 
 int /*<<< orphan*/  LZMA_FINISH ; 
 int /*<<< orphan*/  const LZMA_GET_CHECK ; 
 int /*<<< orphan*/  const LZMA_NO_CHECK ; 
 int /*<<< orphan*/  const LZMA_OK ; 
 int /*<<< orphan*/  const LZMA_PROG_ERROR ; 
 int /*<<< orphan*/  const LZMA_STREAM_END ; 
 int LZMA_TELL_ANY_CHECK ; 
 int LZMA_TELL_NO_CHECK ; 
#define  SEQ_CODE 130 
#define  SEQ_FINISH 129 
#define  SEQ_INIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const*,size_t*,size_t,int*,size_t*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static lzma_ret
FUNC5(lzma_coder *coder, lzma_allocator *allocator,
		const uint8_t *restrict in, size_t *restrict in_pos,
		size_t in_size, uint8_t *restrict out,
		size_t *restrict out_pos, size_t out_size, lzma_action action)
{
	switch (coder->sequence) {
	case SEQ_INIT:
		if (*in_pos >= in_size)
			return LZMA_OK;

		// Update the sequence now, because we want to continue from
		// SEQ_CODE even if we return some LZMA_*_CHECK.
		coder->sequence = SEQ_CODE;

		// Detect the file format. For now this is simple, since if
		// it doesn't start with 0xFD (the first magic byte of the
		// new format), it has to be LZMA_Alone, or something that
		// we don't support at all.
		if (in[*in_pos] == 0xFD) {
			FUNC3(FUNC2(
					&coder->next, allocator,
					coder->memlimit, coder->flags));
		} else {
			FUNC3(FUNC1(&coder->next,
					allocator, coder->memlimit, true));

			// If the application wants to know about missing
			// integrity check or about the check in general, we
			// need to handle it here, because LZMA_Alone decoder
			// doesn't accept any flags.
			if (coder->flags & LZMA_TELL_NO_CHECK)
				return LZMA_NO_CHECK;

			if (coder->flags & LZMA_TELL_ANY_CHECK)
				return LZMA_GET_CHECK;
		}

	// Fall through

	case SEQ_CODE: {
		const lzma_ret ret = coder->next.code(
				coder->next.coder, allocator,
				in, in_pos, in_size,
				out, out_pos, out_size, action);
		if (ret != LZMA_STREAM_END
				|| (coder->flags & LZMA_CONCATENATED) == 0)
			return ret;

		coder->sequence = SEQ_FINISH;
	}

	// Fall through

	case SEQ_FINISH:
		// When LZMA_DECODE_CONCATENATED was used and we were decoding
		// LZMA_Alone file, we need to check check that there is no
		// trailing garbage and wait for LZMA_FINISH.
		if (*in_pos < in_size)
			return LZMA_DATA_ERROR;

		return action == LZMA_FINISH ? LZMA_STREAM_END : LZMA_OK;

	default:
		FUNC0(0);
		return LZMA_PROG_ERROR;
	}
}