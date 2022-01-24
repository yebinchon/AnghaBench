#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64 ;
struct TYPE_2__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int SPI_OK_SELECT ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 size_t SPI_processed ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* SPI_tuptable ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC6(const char *query)
{
	uint64		i;
	List	   *list = NIL;
	int			spi_result;

	spi_result = FUNC1(query, true, 0);
	if (spi_result != SPI_OK_SELECT)
		FUNC4(ERROR, "SPI_execute returned %s for %s",
			 FUNC3(spi_result), query);

	for (i = 0; i < SPI_processed; i++)
	{
		Datum		oid;
		bool		isnull;

		oid = FUNC2(SPI_tuptable->vals[i],
							SPI_tuptable->tupdesc,
							1,
							&isnull);
		if (!isnull)
			list = FUNC5(list, FUNC0(oid));
	}

	return list;
}