#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int pgoff_t ;
struct TYPE_7__ {scalar_t__ version; int (* ReadBytePtr ) (TYPE_1__*) ;int offSize; } ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
#define  K_OFFSET_NO_DATA 130 
#define  K_OFFSET_POS_NOT_SET 129 
#define  K_OFFSET_POS_SET 128 
 scalar_t__ K_VERS_1_7 ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int
FUNC5(ArchiveHandle *AH, pgoff_t * o)
{
	int			i;
	int			off;
	int			offsetFlg;

	/* Initialize to zero */
	*o = 0;

	/* Check for old version */
	if (AH->version < K_VERS_1_7)
	{
		/* Prior versions wrote offsets using WriteInt */
		i = FUNC0(AH);
		/* -1 means not set */
		if (i < 0)
			return K_OFFSET_POS_NOT_SET;
		else if (i == 0)
			return K_OFFSET_NO_DATA;

		/* Cast to pgoff_t because it was written as an int. */
		*o = (pgoff_t) i;
		return K_OFFSET_POS_SET;
	}

	/*
	 * Read the flag indicating the state of the data pointer. Check if valid
	 * and die if not.
	 *
	 * This used to be handled by a negative or zero pointer, now we use an
	 * extra byte specifically for the state.
	 */
	offsetFlg = AH->ReadBytePtr(AH) & 0xFF;

	switch (offsetFlg)
	{
		case K_OFFSET_POS_NOT_SET:
		case K_OFFSET_NO_DATA:
		case K_OFFSET_POS_SET:

			break;

		default:
			FUNC1("unexpected data offset flag %d", offsetFlg);
	}

	/*
	 * Read the bytes
	 */
	for (off = 0; off < AH->offSize; off++)
	{
		if (off < sizeof(pgoff_t))
			*o |= ((pgoff_t) (AH->ReadBytePtr(AH))) << (off * 8);
		else
		{
			if (AH->ReadBytePtr(AH) != 0)
				FUNC1("file offset in dump file is too large");
		}
	}

	return offsetFlg;
}