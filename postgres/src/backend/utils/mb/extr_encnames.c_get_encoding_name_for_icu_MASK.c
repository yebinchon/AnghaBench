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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PG_ENCODING_BE_LAST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char**) ; 
 char** pg_enc2icu_tbl ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

const char *
FUNC6(int encoding)
{
	const char *icu_encoding_name;

	FUNC0(FUNC4(pg_enc2icu_tbl) == PG_ENCODING_BE_LAST + 1,
					 "pg_enc2icu_tbl incomplete");

	icu_encoding_name = pg_enc2icu_tbl[encoding];

	if (!icu_encoding_name)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("encoding \"%s\" not supported by ICU",
						FUNC5(encoding))));

	return icu_encoding_name;
}