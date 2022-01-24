#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  text ;
struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {TYPE_6__* tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_10__ {int maxdepth; int weight; } ;
typedef  TYPE_1__ TSVectorStat ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  int /*<<< orphan*/ * Portal ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_6__*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ SPI_processed ; 
 TYPE_5__* SPI_tuptable ; 
 int /*<<< orphan*/  TSVECTOROID ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (char*) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TSVectorStat *
FUNC20(MemoryContext persistentContext, text *txt, text *ws)
{
	char	   *query = FUNC18(txt);
	TSVectorStat *stat;
	bool		isnull;
	Portal		portal;
	SPIPlanPtr	plan;

	if ((plan = FUNC9(query, 0, NULL)) == NULL)
		/* internal error */
		FUNC12(ERROR, "SPI_prepare(\"%s\") failed", query);

	if ((portal = FUNC4(NULL, plan, NULL, NULL, true)) == NULL)
		/* internal error */
		FUNC12(ERROR, "SPI_cursor_open(\"%s\") failed", query);

	FUNC3(portal, true, 100);

	if (SPI_tuptable == NULL ||
		SPI_tuptable->tupdesc->natts != 1 ||
		!FUNC0(FUNC8(SPI_tuptable->tupdesc, 1),
						   TSVECTOROID))
		FUNC13(ERROR,
				(FUNC14(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC15("ts_stat query must return one tsvector column")));

	stat = FUNC1(persistentContext, sizeof(TSVectorStat));
	stat->maxdepth = 1;

	if (ws)
	{
		char	   *buf;

		buf = FUNC10(ws);
		while (buf - FUNC10(ws) < FUNC11(ws))
		{
			if (FUNC17(buf) == 1)
			{
				switch (*buf)
				{
					case 'A':
					case 'a':
						stat->weight |= 1 << 3;
						break;
					case 'B':
					case 'b':
						stat->weight |= 1 << 2;
						break;
					case 'C':
					case 'c':
						stat->weight |= 1 << 1;
						break;
					case 'D':
					case 'd':
						stat->weight |= 1;
						break;
					default:
						stat->weight |= 0;
				}
			}
			buf += FUNC17(buf);
		}
	}

	while (SPI_processed > 0)
	{
		uint64		i;

		for (i = 0; i < SPI_processed; i++)
		{
			Datum		data = FUNC7(SPI_tuptable->vals[i], SPI_tuptable->tupdesc, 1, &isnull);

			if (!isnull)
				stat = FUNC19(persistentContext, stat, data);
		}

		FUNC6(SPI_tuptable);
		FUNC3(portal, true, 100);
	}

	FUNC6(SPI_tuptable);
	FUNC2(portal);
	FUNC5(plan);
	FUNC16(query);

	return stat;
}