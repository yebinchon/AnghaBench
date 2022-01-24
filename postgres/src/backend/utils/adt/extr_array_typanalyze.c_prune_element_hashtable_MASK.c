#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int frequency; int delta; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ TrackItem ;
struct TYPE_4__ {int /*<<< orphan*/  typbyval; } ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 TYPE_2__* array_extra_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(HTAB *elements_tab, int b_current)
{
	HASH_SEQ_STATUS scan_status;
	TrackItem  *item;

	FUNC3(&scan_status, elements_tab);
	while ((item = (TrackItem *) FUNC4(&scan_status)) != NULL)
	{
		if (item->frequency + item->delta <= b_current)
		{
			Datum		value = item->key;

			if (FUNC2(elements_tab, (const void *) &item->key,
							HASH_REMOVE, NULL) == NULL)
				FUNC1(ERROR, "hash table corrupted");
			/* We should free memory if element is not passed by value */
			if (!array_extra_data->typbyval)
				FUNC5(FUNC0(value));
		}
	}
}