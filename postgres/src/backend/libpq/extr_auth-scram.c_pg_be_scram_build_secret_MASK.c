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
typedef  scalar_t__ pg_saslprep_rc ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ SASLPREP_SUCCESS ; 
 int /*<<< orphan*/  SCRAM_DEFAULT_ITERATIONS ; 
 int SCRAM_DEFAULT_SALT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* FUNC6 (char*,int,int /*<<< orphan*/ ,char const*) ; 

char *
FUNC7(const char *password)
{
	char	   *prep_password;
	pg_saslprep_rc rc;
	char		saltbuf[SCRAM_DEFAULT_SALT_LEN];
	char	   *result;

	/*
	 * Normalize the password with SASLprep.  If that doesn't work, because
	 * the password isn't valid UTF-8 or contains prohibited characters, just
	 * proceed with the original password.  (See comments at top of file.)
	 */
	rc = FUNC4(password, &prep_password);
	if (rc == SASLPREP_SUCCESS)
		password = (const char *) prep_password;

	/* Generate random salt */
	if (!FUNC5(saltbuf, SCRAM_DEFAULT_SALT_LEN))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INTERNAL_ERROR),
				 FUNC2("could not generate random salt")));

	result = FUNC6(saltbuf, SCRAM_DEFAULT_SALT_LEN,
								  SCRAM_DEFAULT_ITERATIONS, password);

	if (prep_password)
		FUNC3(prep_password);

	return result;
}