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
struct TYPE_8__ {int indexsize; int t; int size; } ;
typedef  TYPE_1__ gbtree_ninfo ;
typedef  int /*<<< orphan*/  float8 ;
typedef  int /*<<< orphan*/  float4 ;
typedef  int /*<<< orphan*/  Timestamp ;
typedef  int /*<<< orphan*/  TimeADT ;
struct TYPE_9__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  page; int /*<<< orphan*/  rel; int /*<<< orphan*/  key; scalar_t__ leafkey; } ;
typedef  TYPE_2__ GISTENTRY ;
typedef  int /*<<< orphan*/  GBT_NUMKEY ;
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
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
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
 int /*<<< orphan*/  FUNC13 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (void*,void*,int) ; 
 TYPE_2__* FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 

GISTENTRY *
FUNC17(GISTENTRY *entry, const gbtree_ninfo *tinfo)
{
	GISTENTRY  *retval;

	if (entry->leafkey)
	{
		union
		{
			int16		i2;
			int32		i4;
			int64		i8;
			float4		f4;
			float8		f8;
			DateADT		dt;
			TimeADT		tm;
			Timestamp	ts;
			Cash		ch;
		}			v;

		GBT_NUMKEY *r = (GBT_NUMKEY *) FUNC16(tinfo->indexsize);
		void	   *leaf = NULL;

		switch (tinfo->t)
		{
			case gbt_t_int2:
				v.i2 = FUNC5(entry->key);
				leaf = &v.i2;
				break;
			case gbt_t_int4:
				v.i4 = FUNC6(entry->key);
				leaf = &v.i4;
				break;
			case gbt_t_int8:
				v.i8 = FUNC7(entry->key);
				leaf = &v.i8;
				break;
			case gbt_t_oid:
			case gbt_t_enum:
				v.i4 = FUNC8(entry->key);
				leaf = &v.i4;
				break;
			case gbt_t_float4:
				v.f4 = FUNC3(entry->key);
				leaf = &v.f4;
				break;
			case gbt_t_float8:
				v.f8 = FUNC4(entry->key);
				leaf = &v.f8;
				break;
			case gbt_t_date:
				v.dt = FUNC2(entry->key);
				leaf = &v.dt;
				break;
			case gbt_t_time:
				v.tm = FUNC10(entry->key);
				leaf = &v.tm;
				break;
			case gbt_t_ts:
				v.ts = FUNC11(entry->key);
				leaf = &v.ts;
				break;
			case gbt_t_cash:
				v.ch = FUNC1(entry->key);
				leaf = &v.ch;
				break;
			default:
				leaf = FUNC9(entry->key);
		}

		FUNC0(tinfo->indexsize >= 2 * tinfo->size);

		FUNC14((void *) &r[0], leaf, tinfo->size);
		FUNC14((void *) &r[tinfo->size], leaf, tinfo->size);
		retval = FUNC15(sizeof(GISTENTRY));
		FUNC13(*retval, FUNC12(r), entry->rel, entry->page,
					  entry->offset, false);
	}
	else
		retval = entry;

	return retval;
}