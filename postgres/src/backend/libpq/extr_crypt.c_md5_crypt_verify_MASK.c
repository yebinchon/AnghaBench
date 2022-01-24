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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MD5_PASSWD_LEN ; 
 scalar_t__ PASSWORD_TYPE_MD5 ; 
 int STATUS_ERROR ; 
 int STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int FUNC6 (char*) ; 

int
FUNC7(const char *role, const char *shadow_pass,
				 const char *client_pass,
				 const char *md5_salt, int md5_salt_len,
				 char **logdetail)
{
	int			retval;
	char		crypt_pwd[MD5_PASSWD_LEN + 1];

	FUNC0(md5_salt_len > 0);

	if (FUNC2(shadow_pass) != PASSWORD_TYPE_MD5)
	{
		/* incompatible password hash format. */
		*logdetail = FUNC4(FUNC1("User \"%s\" has a password that cannot be used with MD5 authentication."),
							  role);
		return STATUS_ERROR;
	}

	/*
	 * Compute the correct answer for the MD5 challenge.
	 *
	 * We do not bother setting logdetail for any pg_md5_encrypt failure
	 * below: the only possible error is out-of-memory, which is unlikely, and
	 * if it did happen adding a psprintf call would only make things worse.
	 */
	/* stored password already encrypted, only do salt */
	if (!FUNC3(shadow_pass + FUNC6("md5"),
						md5_salt, md5_salt_len,
						crypt_pwd))
	{
		return STATUS_ERROR;
	}

	if (FUNC5(client_pass, crypt_pwd) == 0)
		retval = STATUS_OK;
	else
	{
		*logdetail = FUNC4(FUNC1("Password does not match for user \"%s\"."),
							  role);
		retval = STATUS_ERROR;
	}

	return retval;
}