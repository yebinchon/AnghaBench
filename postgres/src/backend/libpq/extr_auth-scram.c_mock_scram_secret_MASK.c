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
 int /*<<< orphan*/  ERROR ; 
 int SCRAM_DEFAULT_ITERATIONS ; 
 int /*<<< orphan*/  SCRAM_DEFAULT_SALT_LEN ; 
 int /*<<< orphan*/  SCRAM_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(const char *username, int *iterations, char **salt,
					uint8 *stored_key, uint8 *server_key)
{
	char	   *raw_salt;
	char	   *encoded_salt;
	int			encoded_len;

	/* Generate deterministic salt */
	raw_salt = FUNC5(username);

	encoded_len = FUNC3(SCRAM_DEFAULT_SALT_LEN);
	/* don't forget the zero-terminator */
	encoded_salt = (char *) FUNC2(encoded_len + 1);
	encoded_len = FUNC4(raw_salt, SCRAM_DEFAULT_SALT_LEN, encoded_salt,
								encoded_len);

	/*
	 * Note that we cannot reveal any information to an attacker here so the
	 * error message needs to remain generic.  This should never fail anyway
	 * as the salt generated for mock authentication uses the cluster's nonce
	 * value.
	 */
	if (encoded_len < 0)
		FUNC0(ERROR, "could not encode salt");
	encoded_salt[encoded_len] = '\0';

	*salt = encoded_salt;
	*iterations = SCRAM_DEFAULT_ITERATIONS;

	/* StoredKey and ServerKey are not used in a doomed authentication */
	FUNC1(stored_key, 0, SCRAM_KEY_LEN);
	FUNC1(server_key, 0, SCRAM_KEY_LEN);
}