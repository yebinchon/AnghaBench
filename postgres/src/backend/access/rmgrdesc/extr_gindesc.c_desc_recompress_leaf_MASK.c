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
typedef  int uint8 ;
typedef  int uint16 ;
struct TYPE_3__ {int nactions; } ;
typedef  TYPE_1__ ginxlogRecompressDataLeaf ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  GinPostingList ;

/* Variables and functions */
#define  GIN_SEGMENT_ADDITEMS 131 
#define  GIN_SEGMENT_DELETE 130 
#define  GIN_SEGMENT_INSERT 129 
#define  GIN_SEGMENT_REPLACE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int) ; 

__attribute__((used)) static void
FUNC4(StringInfo buf, ginxlogRecompressDataLeaf *insertData)
{
	int			i;
	char	   *walbuf = ((char *) insertData) + sizeof(ginxlogRecompressDataLeaf);

	FUNC2(buf, " %d segments:", (int) insertData->nactions);

	for (i = 0; i < insertData->nactions; i++)
	{
		uint8		a_segno = *((uint8 *) (walbuf++));
		uint8		a_action = *((uint8 *) (walbuf++));
		uint16		nitems = 0;
		int			newsegsize = 0;

		if (a_action == GIN_SEGMENT_INSERT ||
			a_action == GIN_SEGMENT_REPLACE)
		{
			newsegsize = FUNC1((GinPostingList *) walbuf);
			walbuf += FUNC0(newsegsize);
		}

		if (a_action == GIN_SEGMENT_ADDITEMS)
		{
			FUNC3(&nitems, walbuf, sizeof(uint16));
			walbuf += sizeof(uint16);
			walbuf += nitems * sizeof(ItemPointerData);
		}

		switch (a_action)
		{
			case GIN_SEGMENT_ADDITEMS:
				FUNC2(buf, " %d (add %d items)", a_segno, nitems);
				break;
			case GIN_SEGMENT_DELETE:
				FUNC2(buf, " %d (delete)", a_segno);
				break;
			case GIN_SEGMENT_INSERT:
				FUNC2(buf, " %d (insert)", a_segno);
				break;
			case GIN_SEGMENT_REPLACE:
				FUNC2(buf, " %d (replace)", a_segno);
				break;
			default:
				FUNC2(buf, " %d unknown action %d ???", a_segno, a_action);
				/* cannot decode unrecognized actions further */
				return;
		}
	}
}