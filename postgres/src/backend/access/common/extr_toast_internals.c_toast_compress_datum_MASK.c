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
struct varlena {int dummy; } ;
typedef  scalar_t__ int32 ;
struct TYPE_3__ {scalar_t__ min_input_size; scalar_t__ max_input_size; } ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* PGLZ_strategy_default ; 
 int /*<<< orphan*/  FUNC3 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC4 (struct varlena*,scalar_t__) ; 
 scalar_t__ TOAST_COMPRESS_HDRSZ ; 
 int /*<<< orphan*/  FUNC5 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC6 (struct varlena*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct varlena*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 

Datum
FUNC14(Datum value)
{
	struct varlena *tmp;
	int32		valsize = FUNC10(FUNC1(value));
	int32		len;

	FUNC0(!FUNC8(FUNC1(value)));
	FUNC0(!FUNC7(FUNC1(value)));

	/*
	 * No point in wasting a palloc cycle if value size is out of the allowed
	 * range for compression
	 */
	if (valsize < PGLZ_strategy_default->min_input_size ||
		valsize > PGLZ_strategy_default->max_input_size)
		return FUNC3(NULL);

	tmp = (struct varlena *) FUNC11(FUNC2(valsize) +
									TOAST_COMPRESS_HDRSZ);

	/*
	 * We recheck the actual size even if pglz_compress() reports success,
	 * because it might be satisfied with having saved as little as one byte
	 * in the compressed data --- which could turn into a net loss once you
	 * consider header and alignment padding.  Worst case, the compressed
	 * format might require three padding bytes (plus header, which is
	 * included in VARSIZE(tmp)), whereas the uncompressed format would take
	 * only one header byte and no padding if the value is short enough.  So
	 * we insist on a savings of more than 2 bytes to ensure we have a gain.
	 */
	len = FUNC13(FUNC9(FUNC1(value)),
						valsize,
						FUNC5(tmp),
						PGLZ_strategy_default);
	if (len >= 0 &&
		len + TOAST_COMPRESS_HDRSZ < valsize - 2)
	{
		FUNC6(tmp, valsize);
		FUNC4(tmp, len + TOAST_COMPRESS_HDRSZ);
		/* successful compression */
		return FUNC3(tmp);
	}
	else
	{
		/* incompressible data */
		FUNC12(tmp);
		return FUNC3(NULL);
	}
}