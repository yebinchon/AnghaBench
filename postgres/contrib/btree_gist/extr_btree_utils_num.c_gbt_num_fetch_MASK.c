#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_8__ {int indexsize; int size; int t; } ;
typedef  TYPE_1__ gbtree_ninfo ;
typedef  int /*<<< orphan*/  float8 ;
typedef  int /*<<< orphan*/  float4 ;
typedef  int /*<<< orphan*/  Timestamp ;
typedef  int /*<<< orphan*/  TimeADT ;
struct TYPE_9__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  page; int /*<<< orphan*/  rel; scalar_t__ key; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ GISTENTRY ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  DateADT ;
typedef  int /*<<< orphan*/  Cash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
#define  gbt_t_cash 138 
#define  gbt_t_date 137 
#define  gbt_t_enum 136 
#define  gbt_t_float4 135 
#define  gbt_t_float8 134 
#define  gbt_t_int2 133 
#define  gbt_t_int4 132 
#define  gbt_t_int8 131 
#define  gbt_t_oid 130 
#define  gbt_t_time 129 
#define  gbt_t_ts 128 
 int /*<<< orphan*/  FUNC12 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC13 (int) ; 

GISTENTRY *
FUNC14(GISTENTRY *entry, const gbtree_ninfo *tinfo)
{
	GISTENTRY  *retval;
	Datum		datum;

	FUNC0(tinfo->indexsize >= 2 * tinfo->size);

	/*
	 * Get the original Datum from the stored datum. On leaf entries, the
	 * lower and upper bound are the same. We just grab the lower bound and
	 * return it.
	 */
	switch (tinfo->t)
	{
		case gbt_t_int2:
			datum = FUNC5(*(int16 *) entry->key);
			break;
		case gbt_t_int4:
			datum = FUNC6(*(int32 *) entry->key);
			break;
		case gbt_t_int8:
			datum = FUNC7(*(int64 *) entry->key);
			break;
		case gbt_t_oid:
		case gbt_t_enum:
			datum = FUNC8(*(Oid *) entry->key);
			break;
		case gbt_t_float4:
			datum = FUNC3(*(float4 *) entry->key);
			break;
		case gbt_t_float8:
			datum = FUNC4(*(float8 *) entry->key);
			break;
		case gbt_t_date:
			datum = FUNC2(*(DateADT *) entry->key);
			break;
		case gbt_t_time:
			datum = FUNC10(*(TimeADT *) entry->key);
			break;
		case gbt_t_ts:
			datum = FUNC11(*(Timestamp *) entry->key);
			break;
		case gbt_t_cash:
			datum = FUNC1(*(Cash *) entry->key);
			break;
		default:
			datum = FUNC9(entry->key);
	}

	retval = FUNC13(sizeof(GISTENTRY));
	FUNC12(*retval, datum, entry->rel, entry->page, entry->offset,
				  false);
	return retval;
}