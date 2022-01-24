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

/* Variables and functions */
 int SCRAM_KEY_LEN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 
 int FUNC8 (char*,char**,int) ; 

bool
FUNC9(const char *secret, int *iterations, char **salt,
					 uint8 *stored_key, uint8 *server_key)
{
	char	   *v;
	char	   *p;
	char	   *scheme_str;
	char	   *salt_str;
	char	   *iterations_str;
	char	   *storedkey_str;
	char	   *serverkey_str;
	int			decoded_len;
	char	   *decoded_salt_buf;
	char	   *decoded_stored_buf;
	char	   *decoded_server_buf;

	/*
	 * The secret is of form:
	 *
	 * SCRAM-SHA-256$<iterations>:<salt>$<storedkey>:<serverkey>
	 */
	v = FUNC4(secret);
	if ((scheme_str = FUNC7(v, "$")) == NULL)
		goto invalid_secret;
	if ((iterations_str = FUNC7(NULL, ":")) == NULL)
		goto invalid_secret;
	if ((salt_str = FUNC7(NULL, "$")) == NULL)
		goto invalid_secret;
	if ((storedkey_str = FUNC7(NULL, ":")) == NULL)
		goto invalid_secret;
	if ((serverkey_str = FUNC7(NULL, "")) == NULL)
		goto invalid_secret;

	/* Parse the fields */
	if (FUNC5(scheme_str, "SCRAM-SHA-256") != 0)
		goto invalid_secret;

	errno = 0;
	*iterations = FUNC8(iterations_str, &p, 10);
	if (*p || errno != 0)
		goto invalid_secret;

	/*
	 * Verify that the salt is in Base64-encoded format, by decoding it,
	 * although we return the encoded version to the caller.
	 */
	decoded_len = FUNC2(FUNC6(salt_str));
	decoded_salt_buf = FUNC1(decoded_len);
	decoded_len = FUNC3(salt_str, FUNC6(salt_str),
								decoded_salt_buf, decoded_len);
	if (decoded_len < 0)
		goto invalid_secret;
	*salt = FUNC4(salt_str);

	/*
	 * Decode StoredKey and ServerKey.
	 */
	decoded_len = FUNC2(FUNC6(storedkey_str));
	decoded_stored_buf = FUNC1(decoded_len);
	decoded_len = FUNC3(storedkey_str, FUNC6(storedkey_str),
								decoded_stored_buf, decoded_len);
	if (decoded_len != SCRAM_KEY_LEN)
		goto invalid_secret;
	FUNC0(stored_key, decoded_stored_buf, SCRAM_KEY_LEN);

	decoded_len = FUNC2(FUNC6(serverkey_str));
	decoded_server_buf = FUNC1(decoded_len);
	decoded_len = FUNC3(serverkey_str, FUNC6(serverkey_str),
								decoded_server_buf, decoded_len);
	if (decoded_len != SCRAM_KEY_LEN)
		goto invalid_secret;
	FUNC0(server_key, decoded_server_buf, SCRAM_KEY_LEN);

	return true;

invalid_secret:
	*salt = NULL;
	return false;
}