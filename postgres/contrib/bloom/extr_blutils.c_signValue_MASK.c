#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_4__ {int* bitSize; int bloomLength; } ;
struct TYPE_5__ {TYPE_1__ opts; int /*<<< orphan*/ * collations; int /*<<< orphan*/ * hashFn; } ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ BloomState ;
typedef  int /*<<< orphan*/  BloomSignatureWord ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int SIGNWORDBITS ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(BloomState *state, BloomSignatureWord *sign, Datum value, int attno)
{
	uint32		hashVal;
	int			nBit,
				j;

	/*
	 * init generator with "column's" number to get "hashed" seed for new
	 * value. We don't want to map the same numbers from different columns
	 * into the same bits!
	 */
	FUNC4(attno);

	/*
	 * Init hash sequence to map our value into bits. the same values in
	 * different columns will be mapped into different bits because of step
	 * above
	 */
	hashVal = FUNC0(FUNC1(&state->hashFn[attno], state->collations[attno], value));
	FUNC4(hashVal ^ FUNC3());

	for (j = 0; j < state->opts.bitSize[attno]; j++)
	{
		/* prevent multiple evaluation in SETBIT macro */
		nBit = FUNC3() % (state->opts.bloomLength * SIGNWORDBITS);
		FUNC2(sign, nBit);
	}
}