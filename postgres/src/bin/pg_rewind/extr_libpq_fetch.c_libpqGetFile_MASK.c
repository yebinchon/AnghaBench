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
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 char* FUNC11 (int) ; 

char *
FUNC12(const char *filename, size_t *filesize)
{
	PGresult   *res;
	char	   *result;
	int			len;
	const char *paramValues[1];

	paramValues[0] = filename;
	res = FUNC1(conn, "SELECT pg_read_binary_file($1)",
					   1, NULL, paramValues, NULL, NULL, 1);

	if (FUNC7(res) != PGRES_TUPLES_OK)
		FUNC9("could not fetch remote file \"%s\": %s",
				 filename, FUNC6(res));

	/* sanity check the result set */
	if (FUNC5(res) != 1 || FUNC2(res, 0, 0))
		FUNC9("unexpected result set while fetching remote file \"%s\"",
				 filename);

	/* Read result to local variables */
	len = FUNC3(res, 0, 0);
	result = FUNC11(len + 1);
	FUNC8(result, FUNC4(res, 0, 0), len);
	result[len] = '\0';

	FUNC0(res);

	FUNC10("fetched file \"%s\", length %d", filename, len);

	if (filesize)
		*filesize = len;
	return result;
}