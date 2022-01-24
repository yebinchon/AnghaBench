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
 scalar_t__ SASLPREP_OOM ; 
 scalar_t__ SASLPREP_SUCCESS ; 
 int /*<<< orphan*/  SCRAM_DEFAULT_ITERATIONS ; 
 int SCRAM_DEFAULT_SALT_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char*,int,int /*<<< orphan*/ ,char const*) ; 

char *
FUNC4(const char *password)
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
	rc = FUNC1(password, &prep_password);
	if (rc == SASLPREP_OOM)
		return NULL;
	if (rc == SASLPREP_SUCCESS)
		password = (const char *) prep_password;

	/* Generate a random salt */
	if (!FUNC2(saltbuf, SCRAM_DEFAULT_SALT_LEN))
	{
		if (prep_password)
			FUNC0(prep_password);
		return NULL;
	}

	result = FUNC3(saltbuf, SCRAM_DEFAULT_SALT_LEN,
								  SCRAM_DEFAULT_ITERATIONS, password);

	if (prep_password)
		FUNC0(prep_password);

	return result;
}