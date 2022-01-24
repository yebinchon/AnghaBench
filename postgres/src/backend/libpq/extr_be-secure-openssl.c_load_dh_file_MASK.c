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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DH ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int DH_CHECK_P_NOT_PRIME ; 
 int DH_CHECK_P_NOT_SAFE_PRIME ; 
 int DH_NOT_SUITABLE_GENERATOR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static DH  *
FUNC10(char *filename, bool isServerStart)
{
	FILE	   *fp;
	DH		   *dh = NULL;
	int			codes;

	/* attempt to open file.  It's not an error if it doesn't exist. */
	if ((fp = FUNC0(filename, "r")) == NULL)
	{
		FUNC6(isServerStart ? FATAL : LOG,
				(FUNC8(),
				 FUNC9("could not open DH parameters file \"%s\": %m",
						filename)));
		return NULL;
	}

	dh = FUNC4(fp, NULL, NULL, NULL);
	FUNC3(fp);

	if (dh == NULL)
	{
		FUNC6(isServerStart ? FATAL : LOG,
				(FUNC7(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC9("could not load DH parameters file: %s",
						FUNC5(FUNC2()))));
		return NULL;
	}

	/* make sure the DH parameters are usable */
	if (FUNC1(dh, &codes) == 0)
	{
		FUNC6(isServerStart ? FATAL : LOG,
				(FUNC7(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC9("invalid DH parameters: %s",
						FUNC5(FUNC2()))));
		return NULL;
	}
	if (codes & DH_CHECK_P_NOT_PRIME)
	{
		FUNC6(isServerStart ? FATAL : LOG,
				(FUNC7(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC9("invalid DH parameters: p is not prime")));
		return NULL;
	}
	if ((codes & DH_NOT_SUITABLE_GENERATOR) &&
		(codes & DH_CHECK_P_NOT_SAFE_PRIME))
	{
		FUNC6(isServerStart ? FATAL : LOG,
				(FUNC7(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC9("invalid DH parameters: neither suitable generator or safe prime")));
		return NULL;
	}

	return dh;
}