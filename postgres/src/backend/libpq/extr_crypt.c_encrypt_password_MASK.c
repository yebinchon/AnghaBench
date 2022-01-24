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
typedef  scalar_t__ PasswordType ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MD5_PASSWD_LEN ; 
#define  PASSWORD_TYPE_MD5 130 
#define  PASSWORD_TYPE_PLAINTEXT 129 
#define  PASSWORD_TYPE_SCRAM_SHA_256 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

char *
FUNC7(PasswordType target_type, const char *role,
				 const char *password)
{
	PasswordType guessed_type = FUNC1(password);
	char	   *encrypted_password;

	if (guessed_type != PASSWORD_TYPE_PLAINTEXT)
	{
		/*
		 * Cannot convert an already-encrypted password from one format to
		 * another, so return it as it is.
		 */
		return FUNC5(password);
	}

	switch (target_type)
	{
		case PASSWORD_TYPE_MD5:
			encrypted_password = FUNC2(MD5_PASSWD_LEN + 1);

			if (!FUNC4(password, role, FUNC6(role),
								encrypted_password))
				FUNC0(ERROR, "password encryption failed");
			return encrypted_password;

		case PASSWORD_TYPE_SCRAM_SHA_256:
			return FUNC3(password);

		case PASSWORD_TYPE_PLAINTEXT:
			FUNC0(ERROR, "cannot encrypt password with 'plaintext'");
	}

	/*
	 * This shouldn't happen, because the above switch statements should
	 * handle every combination of source and target password types.
	 */
	FUNC0(ERROR, "cannot encrypt password to requested type");
	return NULL;				/* keep compiler quiet */
}