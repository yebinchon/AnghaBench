#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  const lzma_ret ;
struct TYPE_10__ {int /*<<< orphan*/  u8; } ;
struct TYPE_12__ {TYPE_3__ buffer; } ;
struct TYPE_8__ {int /*<<< orphan*/  coder; int /*<<< orphan*/  const (* code ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const*,size_t*,size_t,int*,size_t*,size_t,int /*<<< orphan*/ ) ;} ;
struct TYPE_11__ {int sequence; int compressed_size; int compressed_limit; int uncompressed_size; size_t const check_pos; TYPE_5__ check; TYPE_2__* block; TYPE_1__ next; } ;
typedef  TYPE_4__ lzma_coder ;
typedef  int /*<<< orphan*/  lzma_allocator ;
typedef  int /*<<< orphan*/  lzma_action ;
struct TYPE_9__ {int uncompressed_size; int compressed_size; int /*<<< orphan*/  raw_check; int /*<<< orphan*/  check; } ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_CHECK_NONE ; 
 int /*<<< orphan*/  const LZMA_DATA_ERROR ; 
 int /*<<< orphan*/  const LZMA_OK ; 
 int /*<<< orphan*/  const LZMA_PROG_ERROR ; 
 int /*<<< orphan*/  const LZMA_STREAM_END ; 
#define  SEQ_CHECK 130 
#define  SEQ_CODE 129 
#define  SEQ_PADDING 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int const*,size_t*,size_t,int /*<<< orphan*/ ,size_t const*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  const FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const*,size_t*,size_t,int*,size_t*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,size_t const,int) ; 

__attribute__((used)) static lzma_ret
FUNC9(lzma_coder *coder, lzma_allocator *allocator,
		const uint8_t *restrict in, size_t *restrict in_pos,
		size_t in_size, uint8_t *restrict out,
		size_t *restrict out_pos, size_t out_size, lzma_action action)
{
	switch (coder->sequence) {
	case SEQ_CODE: {
		const size_t in_start = *in_pos;
		const size_t out_start = *out_pos;

		const lzma_ret ret = coder->next.code(coder->next.coder,
				allocator, in, in_pos, in_size,
				out, out_pos, out_size, action);

		const size_t in_used = *in_pos - in_start;
		const size_t out_used = *out_pos - out_start;

		// NOTE: We compare to compressed_limit here, which prevents
		// the total size of the Block growing past LZMA_VLI_MAX.
		if (FUNC8(&coder->compressed_size, in_used,
					coder->compressed_limit)
				|| FUNC8(&coder->uncompressed_size,
					out_used,
					coder->block->uncompressed_size))
			return LZMA_DATA_ERROR;

		FUNC5(&coder->check, coder->block->check,
				out + out_start, out_used);

		if (ret != LZMA_STREAM_END)
			return ret;

		// Compressed and Uncompressed Sizes are now at their final
		// values. Verify that they match the values given to us.
		if (!FUNC0(coder->compressed_size,
					coder->block->compressed_size)
				|| !FUNC0(coder->uncompressed_size,
					coder->block->uncompressed_size))
			return LZMA_DATA_ERROR;

		// Copy the values into coder->block. The caller
		// may use this information to construct Index.
		coder->block->compressed_size = coder->compressed_size;
		coder->block->uncompressed_size = coder->uncompressed_size;

		coder->sequence = SEQ_PADDING;
	}

	// Fall through

	case SEQ_PADDING:
		// Compressed Data is padded to a multiple of four bytes.
		while (coder->compressed_size & 3) {
			if (*in_pos >= in_size)
				return LZMA_OK;

			// We use compressed_size here just get the Padding
			// right. The actual Compressed Size was stored to
			// coder->block already, and won't be modified by
			// us anymore.
			++coder->compressed_size;

			if (in[(*in_pos)++] != 0x00)
				return LZMA_DATA_ERROR;
		}

		if (coder->block->check == LZMA_CHECK_NONE)
			return LZMA_STREAM_END;

		FUNC2(&coder->check, coder->block->check);
		coder->sequence = SEQ_CHECK;

	// Fall through

	case SEQ_CHECK: {
		const size_t check_size = FUNC4(coder->block->check);
		FUNC1(in, in_pos, in_size, coder->block->raw_check,
				&coder->check_pos, check_size);
		if (coder->check_pos < check_size)
			return LZMA_OK;

		// Validate the Check only if we support it.
		// coder->check.buffer may be uninitialized
		// when the Check ID is not supported.
		if (FUNC3(coder->block->check)
				&& FUNC6(coder->block->raw_check,
					coder->check.buffer.u8,
					check_size) != 0)
			return LZMA_DATA_ERROR;

		return LZMA_STREAM_END;
	}
	}

	return LZMA_PROG_ERROR;
}