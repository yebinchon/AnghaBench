#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATA_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ SPI_OK_SELECT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ SPI_processed ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*,int,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char const*,char const*,int) ; 

__attribute__((used)) static StringInfo
FUNC13(const char *query, char *tablename,
					  const char *xmlschema, bool nulls, bool tableforest,
					  const char *targetns, bool top_level)
{
	StringInfo	result;
	char	   *xmltn;
	uint64		i;

	if (tablename)
		xmltn = FUNC10(tablename, true, false);
	else
		xmltn = "table";

	result = FUNC9();

	FUNC0();
	if (FUNC1(query, true, 0) != SPI_OK_SELECT)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_DATA_EXCEPTION),
				 FUNC8("invalid query")));

	if (!tableforest)
	{
		FUNC12(result, xmltn, xmlschema,
								   targetns, top_level);
		FUNC5(result, '\n');
	}

	if (xmlschema)
		FUNC4(result, "%s\n\n", xmlschema);

	for (i = 0; i < SPI_processed; i++)
		FUNC3(i, result, tablename, nulls,
								  tableforest, targetns, top_level);

	if (!tableforest)
		FUNC11(result, xmltn);

	FUNC2();

	return result;
}