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
typedef  int uint32 ;
struct TYPE_3__ {int hashm_ovflpoint; int* hashm_spares; } ;
typedef  TYPE_1__* HashMetaPage ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

uint32
FUNC4(HashMetaPage metap, BlockNumber ovflblkno)
{
	uint32		splitnum = metap->hashm_ovflpoint;
	uint32		i;
	uint32		bitnum;

	/* Determine the split number containing this page */
	for (i = 1; i <= splitnum; i++)
	{
		if (ovflblkno <= (BlockNumber) FUNC0(i))
			break;				/* oops */
		bitnum = ovflblkno - FUNC0(i);

		/*
		 * bitnum has to be greater than number of overflow page added in
		 * previous split point. The overflow page at this splitnum (i) if any
		 * should start from (_hash_get_totalbuckets(i) +
		 * metap->hashm_spares[i - 1] + 1).
		 */
		if (bitnum > metap->hashm_spares[i - 1] &&
			bitnum <= metap->hashm_spares[i])
			return bitnum - 1;	/* -1 to convert 1-based to 0-based */
	}

	FUNC1(ERROR,
			(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
			 FUNC3("invalid overflow block number %u", ovflblkno)));
	return 0;					/* keep compiler quiet */
}