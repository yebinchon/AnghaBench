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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_5__ {int magic; int type; int nitems; TYPE_1__* items; } ;
struct TYPE_4__ {int ndistinct; int /*<<< orphan*/  attrs; } ;
typedef  int Size ;
typedef  TYPE_1__ MVNDistinctItem ;
typedef  TYPE_2__ MVNDistinct ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int STATS_NDISTINCT_MAGIC ; 
 int STATS_NDISTINCT_TYPE_BASIC ; 
 int SizeOfHeader ; 
 int FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*,int) ; 
 scalar_t__ FUNC7 (int) ; 

bytea *
FUNC8(MVNDistinct *ndistinct)
{
	int			i;
	bytea	   *output;
	char	   *tmp;
	Size		len;

	FUNC0(ndistinct->magic == STATS_NDISTINCT_MAGIC);
	FUNC0(ndistinct->type == STATS_NDISTINCT_TYPE_BASIC);

	/*
	 * Base size is size of scalar fields in the struct, plus one base struct
	 * for each item, including number of items for each.
	 */
	len = VARHDRSZ + SizeOfHeader;

	/* and also include space for the actual attribute numbers */
	for (i = 0; i < ndistinct->nitems; i++)
	{
		int			nmembers;

		nmembers = FUNC5(ndistinct->items[i].attrs);
		FUNC0(nmembers >= 2);

		len += FUNC2(nmembers);
	}

	output = (bytea *) FUNC7(len);
	FUNC1(output, len);

	tmp = FUNC3(output);

	/* Store the base struct values (magic, type, nitems) */
	FUNC6(tmp, &ndistinct->magic, sizeof(uint32));
	tmp += sizeof(uint32);
	FUNC6(tmp, &ndistinct->type, sizeof(uint32));
	tmp += sizeof(uint32);
	FUNC6(tmp, &ndistinct->nitems, sizeof(uint32));
	tmp += sizeof(uint32);

	/*
	 * store number of attributes and attribute numbers for each entry
	 */
	for (i = 0; i < ndistinct->nitems; i++)
	{
		MVNDistinctItem item = ndistinct->items[i];
		int			nmembers = FUNC5(item.attrs);
		int			x;

		FUNC6(tmp, &item.ndistinct, sizeof(double));
		tmp += sizeof(double);
		FUNC6(tmp, &nmembers, sizeof(int));
		tmp += sizeof(int);

		x = -1;
		while ((x = FUNC4(item.attrs, x)) >= 0)
		{
			AttrNumber	value = (AttrNumber) x;

			FUNC6(tmp, &value, sizeof(AttrNumber));
			tmp += sizeof(AttrNumber);
		}

		/* protect against overflows */
		FUNC0(tmp <= ((char *) output + len));
	}

	/* check we used exactly the expected space */
	FUNC0(tmp == ((char *) output + len));

	return output;
}