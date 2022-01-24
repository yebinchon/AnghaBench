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
 int /*<<< orphan*/  MD5_PASSWD_LEN ; 
#define  PASSWORD_TYPE_MD5 130 
#define  PASSWORD_TYPE_PLAINTEXT 129 
#define  PASSWORD_TYPE_SCRAM_SHA_256 128 
 int STATUS_ERROR ; 
 int STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int
FUNC7(const char *role, const char *shadow_pass,
				   const char *client_pass,
				   char **logdetail)
{
	char		crypt_client_pass[MD5_PASSWD_LEN + 1];

	/*
	 * Client sent password in plaintext.  If we have an MD5 hash stored, hash
	 * the password the client sent, and compare the hashes.  Otherwise
	 * compare the plaintext passwords directly.
	 */
	switch (FUNC1(shadow_pass))
	{
		case PASSWORD_TYPE_SCRAM_SHA_256:
			if (FUNC4(role,
											client_pass,
											shadow_pass))
			{
				return STATUS_OK;
			}
			else
			{
				*logdetail = FUNC3(FUNC0("Password does not match for user \"%s\"."),
									  role);
				return STATUS_ERROR;
			}
			break;

		case PASSWORD_TYPE_MD5:
			if (!FUNC2(client_pass,
								role,
								FUNC6(role),
								crypt_client_pass))
			{
				/*
				 * We do not bother setting logdetail for pg_md5_encrypt
				 * failure: the only possible error is out-of-memory, which is
				 * unlikely, and if it did happen adding a psprintf call would
				 * only make things worse.
				 */
				return STATUS_ERROR;
			}
			if (FUNC5(crypt_client_pass, shadow_pass) == 0)
				return STATUS_OK;
			else
			{
				*logdetail = FUNC3(FUNC0("Password does not match for user \"%s\"."),
									  role);
				return STATUS_ERROR;
			}
			break;

		case PASSWORD_TYPE_PLAINTEXT:

			/*
			 * We never store passwords in plaintext, so this shouldn't
			 * happen.
			 */
			break;
	}

	/*
	 * This shouldn't happen.  Plain "password" authentication is possible
	 * with any kind of stored password hash.
	 */
	*logdetail = FUNC3(FUNC0("Password of user \"%s\" is in unrecognized format."),
						  role);
	return STATUS_ERROR;
}