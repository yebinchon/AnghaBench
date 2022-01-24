#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_8__ {int /*<<< orphan*/ * tts_values; scalar_t__* tts_isnull; TYPE_2__* tts_tupleDescriptor; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_10__ {int atttypid; } ;
struct TYPE_9__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
#define  INT4OID 130 
#define  INT8OID 129 
#define  TEXTOID 128 
 TYPE_3__* FUNC3 (TYPE_2__*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

bool
FUNC16(TupleTableSlot *slot, DestReceiver *self)
{
	TupleDesc	tupdesc = slot->tts_tupleDescriptor;
	StringInfoData buf;
	int			i;

	/* Make sure the tuple is fully deconstructed */
	FUNC14(slot);

	/* Prepare and send message */
	FUNC9(&buf, 'D');
	FUNC12(&buf, tupdesc->natts);

	for (i = 0; i < tupdesc->natts; ++i)
	{
		Form_pg_attribute attr = FUNC3(tupdesc, i);
		Datum		value;

		if (slot->tts_isnull[i])
		{
			FUNC13(&buf, -1);
			continue;
		}

		value = slot->tts_values[i];

		/*
		 * We can't call the regular type output functions here because we
		 * might not have catalog access.  Instead, we must hard-wire
		 * knowledge of the required types.
		 */
		switch (attr->atttypid)
		{
			case TEXTOID:
				{
					text	   *t = FUNC2(value);

					FUNC11(&buf,
									   FUNC4(t),
									   FUNC5(t),
									   false);
				}
				break;

			case INT4OID:
				{
					int32		num = FUNC0(value);
					char		str[12];	/* sign, 10 digits and '\0' */

					FUNC8(num, str);
					FUNC11(&buf, str, FUNC15(str), false);
				}
				break;

			case INT8OID:
				{
					int64		num = FUNC1(value);
					char		str[23];	/* sign, 21 digits and '\0' */

					FUNC7(num, str);
					FUNC11(&buf, str, FUNC15(str), false);
				}
				break;

			default:
				FUNC6(ERROR, "unsupported type OID: %u", attr->atttypid);
		}
	}

	FUNC10(&buf);

	return true;
}