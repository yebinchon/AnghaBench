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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int SCRAM_DEFAULT_ITERATIONS ; 
 int SCRAM_KEY_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char const*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,char*,int) ; 
 int FUNC12 (char*) ; 

char *
FUNC13(const char *salt, int saltlen, int iterations,
					 const char *password)
{
	uint8		salted_password[SCRAM_KEY_LEN];
	uint8		stored_key[SCRAM_KEY_LEN];
	uint8		server_key[SCRAM_KEY_LEN];
	char	   *result;
	char	   *p;
	int			maxlen;
	int			encoded_salt_len;
	int			encoded_stored_len;
	int			encoded_server_len;
	int			encoded_result;

	if (iterations <= 0)
		iterations = SCRAM_DEFAULT_ITERATIONS;

	/* Calculate StoredKey and ServerKey */
	FUNC9(password, salt, saltlen, iterations,
						 salted_password);
	FUNC7(salted_password, stored_key);
	FUNC8(stored_key, SCRAM_KEY_LEN, stored_key);

	FUNC10(salted_password, server_key);

	/*----------
	 * The format is:
	 * SCRAM-SHA-256$<iteration count>:<salt>$<StoredKey>:<ServerKey>
	 *----------
	 */
	encoded_salt_len = FUNC5(saltlen);
	encoded_stored_len = FUNC5(SCRAM_KEY_LEN);
	encoded_server_len = FUNC5(SCRAM_KEY_LEN);

	maxlen = FUNC12("SCRAM-SHA-256") + 1
		+ 10 + 1				/* iteration count */
		+ encoded_salt_len + 1	/* Base64-encoded salt */
		+ encoded_stored_len + 1	/* Base64-encoded StoredKey */
		+ encoded_server_len + 1;	/* Base64-encoded ServerKey */

#ifdef FRONTEND
	result = malloc(maxlen);
	if (!result)
		return NULL;
#else
	result = FUNC4(maxlen);
#endif

	p = result + FUNC11(result, "SCRAM-SHA-256$%d:", iterations);

	/* salt */
	encoded_result = FUNC6(salt, saltlen, p, encoded_salt_len);
	if (encoded_result < 0)
	{
#ifdef FRONTEND
		free(result);
		return NULL;
#else
		FUNC1(ERROR, "could not encode salt");
#endif
	}
	p += encoded_result;
	*(p++) = '$';

	/* stored key */
	encoded_result = FUNC6((char *) stored_key, SCRAM_KEY_LEN, p,
								   encoded_stored_len);
	if (encoded_result < 0)
	{
#ifdef FRONTEND
		free(result);
		return NULL;
#else
		FUNC1(ERROR, "could not encode stored key");
#endif
	}

	p += encoded_result;
	*(p++) = ':';

	/* server key */
	encoded_result = FUNC6((char *) server_key, SCRAM_KEY_LEN, p,
								   encoded_server_len);
	if (encoded_result < 0)
	{
#ifdef FRONTEND
		free(result);
		return NULL;
#else
		FUNC1(ERROR, "could not encode server key");
#endif
	}

	p += encoded_result;
	*(p++) = '\0';

	FUNC0(p - result <= maxlen);

	return result;
}