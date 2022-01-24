#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* data; } ;
typedef  TYPE_1__ VirtualTupleTableSlot ;
struct TYPE_10__ {void** tts_values; scalar_t__* tts_isnull; int /*<<< orphan*/  tts_flags; int /*<<< orphan*/  tts_mcxt; TYPE_3__* tts_tupleDescriptor; } ;
typedef  TYPE_2__ TupleTableSlot ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_12__ {int attlen; int /*<<< orphan*/  attalign; scalar_t__ attbyval; } ;
struct TYPE_11__ {int natts; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;
typedef  void* Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int,void*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(TupleTableSlot *slot)
{
	VirtualTupleTableSlot *vslot = (VirtualTupleTableSlot *) slot;
	TupleDesc	desc = slot->tts_tupleDescriptor;
	Size		sz = 0;
	char	   *data;

	/* already materialized */
	if (FUNC6(slot))
		return;

	/* compute size of memory required */
	for (int natt = 0; natt < desc->natts; natt++)
	{
		Form_pg_attribute att = FUNC7(desc, natt);
		Datum		val;

		if (att->attbyval || slot->tts_isnull[natt])
			continue;

		val = slot->tts_values[natt];

		if (att->attlen == -1 &&
			FUNC8(FUNC1(val)))
		{
			/*
			 * We want to flatten the expanded value so that the materialized
			 * slot doesn't depend on it.
			 */
			sz = FUNC10(sz, att->attalign);
			sz += FUNC3(FUNC0(val));
		}
		else
		{
			sz = FUNC10(sz, att->attalign);
			sz = FUNC9(sz, att->attlen, val);
		}
	}

	/* all data is byval */
	if (sz == 0)
		return;

	/* allocate memory */
	vslot->data = data = FUNC4(slot->tts_mcxt, sz);
	slot->tts_flags |= TTS_FLAG_SHOULDFREE;

	/* and copy all attributes into the pre-allocated space */
	for (int natt = 0; natt < desc->natts; natt++)
	{
		Form_pg_attribute att = FUNC7(desc, natt);
		Datum		val;

		if (att->attbyval || slot->tts_isnull[natt])
			continue;

		val = slot->tts_values[natt];

		if (att->attlen == -1 &&
			FUNC8(FUNC1(val)))
		{
			Size		data_length;

			/*
			 * We want to flatten the expanded value so that the materialized
			 * slot doesn't depend on it.
			 */
			ExpandedObjectHeader *eoh = FUNC0(val);

			data = (char *) FUNC10(data,
											  att->attalign);
			data_length = FUNC3(eoh);
			FUNC2(eoh, data, data_length);

			slot->tts_values[natt] = FUNC5(data);
			data += data_length;
		}
		else
		{
			Size		data_length = 0;

			data = (char *) FUNC10(data, att->attalign);
			data_length = FUNC9(data_length, att->attlen, val);

			FUNC11(data, FUNC1(val), data_length);

			slot->tts_values[natt] = FUNC5(data);
			data += data_length;
		}
	}
}