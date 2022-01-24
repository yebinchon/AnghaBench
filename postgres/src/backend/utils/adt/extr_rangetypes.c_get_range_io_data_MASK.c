#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_12__ {scalar_t__ type_id; TYPE_1__* rngelemtype; } ;
struct TYPE_11__ {TYPE_2__* flinfo; } ;
struct TYPE_10__ {int /*<<< orphan*/  proc; int /*<<< orphan*/  typiofunc; TYPE_5__* typcache; int /*<<< orphan*/  typioparam; } ;
struct TYPE_9__ {void* fn_extra; int /*<<< orphan*/  fn_mcxt; } ;
struct TYPE_8__ {int /*<<< orphan*/  type_id; } ;
typedef  TYPE_3__ RangeIOData ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  IOFuncSelector ;
typedef  TYPE_4__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  IOFunc_receive ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPECACHE_RANGE_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RangeIOData *
FUNC10(FunctionCallInfo fcinfo, Oid rngtypid, IOFuncSelector func)
{
	RangeIOData *cache = (RangeIOData *) fcinfo->flinfo->fn_extra;

	if (cache == NULL || cache->typcache->type_id != rngtypid)
	{
		int16		typlen;
		bool		typbyval;
		char		typalign;
		char		typdelim;

		cache = (RangeIOData *) FUNC0(fcinfo->flinfo->fn_mcxt,
												   sizeof(RangeIOData));
		cache->typcache = FUNC9(rngtypid, TYPECACHE_RANGE_INFO);
		if (cache->typcache->rngelemtype == NULL)
			FUNC2(ERROR, "type %u is not a range type", rngtypid);

		/* get_type_io_data does more than we need, but is convenient */
		FUNC8(cache->typcache->rngelemtype->type_id,
						 func,
						 &typlen,
						 &typbyval,
						 &typalign,
						 &typdelim,
						 &cache->typioparam,
						 &cache->typiofunc);

		if (!FUNC1(cache->typiofunc))
		{
			/* this could only happen for receive or send */
			if (func == IOFunc_receive)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_UNDEFINED_FUNCTION),
						 FUNC5("no binary input function available for type %s",
								FUNC7(cache->typcache->rngelemtype->type_id))));
			else
				FUNC3(ERROR,
						(FUNC4(ERRCODE_UNDEFINED_FUNCTION),
						 FUNC5("no binary output function available for type %s",
								FUNC7(cache->typcache->rngelemtype->type_id))));
		}
		FUNC6(cache->typiofunc, &cache->proc,
					  fcinfo->flinfo->fn_mcxt);

		fcinfo->flinfo->fn_extra = (void *) cache;
	}

	return cache;
}