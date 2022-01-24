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
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ pg_saslprep_rc ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 scalar_t__ SASLPREP_SUCCESS ; 
 int SCRAM_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC8 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

bool
FUNC12(const char *username, const char *password,
							const char *secret)
{
	char	   *encoded_salt;
	char	   *salt;
	int			saltlen;
	int			iterations;
	uint8		salted_password[SCRAM_KEY_LEN];
	uint8		stored_key[SCRAM_KEY_LEN];
	uint8		server_key[SCRAM_KEY_LEN];
	uint8		computed_key[SCRAM_KEY_LEN];
	char	   *prep_password;
	pg_saslprep_rc rc;

	if (!FUNC4(secret, &iterations, &encoded_salt,
							  stored_key, server_key))
	{
		/*
		 * The password looked like a SCRAM secret, but could not be parsed.
		 */
		FUNC0(LOG,
				(FUNC1("invalid SCRAM secret for user \"%s\"", username)));
		return false;
	}

	saltlen = FUNC6(FUNC11(encoded_salt));
	salt = FUNC3(saltlen);
	saltlen = FUNC7(encoded_salt, FUNC11(encoded_salt), salt,
							saltlen);
	if (saltlen < 0)
	{
		FUNC0(LOG,
				(FUNC1("invalid SCRAM secret for user \"%s\"", username)));
		return false;
	}

	/* Normalize the password */
	rc = FUNC8(password, &prep_password);
	if (rc == SASLPREP_SUCCESS)
		password = prep_password;

	/* Compute Server Key based on the user-supplied plaintext password */
	FUNC9(password, salt, saltlen, iterations, salted_password);
	FUNC10(salted_password, computed_key);

	if (prep_password)
		FUNC5(prep_password);

	/*
	 * Compare the secret's Server Key with the one computed from the
	 * user-supplied password.
	 */
	return FUNC2(computed_key, server_key, SCRAM_KEY_LEN) == 0;
}