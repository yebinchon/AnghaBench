#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_11__ {int /*<<< orphan*/ * atttypmods; int /*<<< orphan*/ * attioparams; int /*<<< orphan*/ * attinfuncs; int /*<<< orphan*/  tupdesc; } ;
struct TYPE_10__ {int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attisdropped; } ;
struct TYPE_9__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  TYPE_3__ AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

AttInMetadata *
FUNC6(TupleDesc tupdesc)
{
	int			natts = tupdesc->natts;
	int			i;
	Oid			atttypeid;
	Oid			attinfuncid;
	FmgrInfo   *attinfuncinfo;
	Oid		   *attioparams;
	int32	   *atttypmods;
	AttInMetadata *attinmeta;

	attinmeta = (AttInMetadata *) FUNC4(sizeof(AttInMetadata));

	/* "Bless" the tupledesc so that we can make rowtype datums with it */
	attinmeta->tupdesc = FUNC0(tupdesc);

	/*
	 * Gather info needed later to call the "in" function for each attribute
	 */
	attinfuncinfo = (FmgrInfo *) FUNC5(natts * sizeof(FmgrInfo));
	attioparams = (Oid *) FUNC5(natts * sizeof(Oid));
	atttypmods = (int32 *) FUNC5(natts * sizeof(int32));

	for (i = 0; i < natts; i++)
	{
		Form_pg_attribute att = FUNC1(tupdesc, i);

		/* Ignore dropped attributes */
		if (!att->attisdropped)
		{
			atttypeid = att->atttypid;
			FUNC3(atttypeid, &attinfuncid, &attioparams[i]);
			FUNC2(attinfuncid, &attinfuncinfo[i]);
			atttypmods[i] = att->atttypmod;
		}
	}
	attinmeta->attinfuncs = attinfuncinfo;
	attinmeta->attioparams = attioparams;
	attinmeta->atttypmods = atttypmods;

	return attinmeta;
}