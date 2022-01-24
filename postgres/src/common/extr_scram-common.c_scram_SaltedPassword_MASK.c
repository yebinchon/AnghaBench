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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  scram_HMAC_ctx ;

/* Variables and functions */
 int SCRAM_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC5 (char const*) ; 

void
FUNC6(const char *password,
					 const char *salt, int saltlen, int iterations,
					 uint8 *result)
{
	int			password_len = FUNC5(password);
	uint32		one = FUNC1(1);
	int			i,
				j;
	uint8		Ui[SCRAM_KEY_LEN];
	uint8		Ui_prev[SCRAM_KEY_LEN];
	scram_HMAC_ctx hmac_ctx;

	/*
	 * Iterate hash calculation of HMAC entry using given salt.  This is
	 * essentially PBKDF2 (see RFC2898) with HMAC() as the pseudorandom
	 * function.
	 */

	/* First iteration */
	FUNC3(&hmac_ctx, (uint8 *) password, password_len);
	FUNC4(&hmac_ctx, salt, saltlen);
	FUNC4(&hmac_ctx, (char *) &one, sizeof(uint32));
	FUNC2(Ui_prev, &hmac_ctx);
	FUNC0(result, Ui_prev, SCRAM_KEY_LEN);

	/* Subsequent iterations */
	for (i = 2; i <= iterations; i++)
	{
		FUNC3(&hmac_ctx, (uint8 *) password, password_len);
		FUNC4(&hmac_ctx, (const char *) Ui_prev, SCRAM_KEY_LEN);
		FUNC2(Ui, &hmac_ctx);
		for (j = 0; j < SCRAM_KEY_LEN; j++)
			result[j] ^= Ui[j];
		FUNC0(Ui_prev, Ui, SCRAM_KEY_LEN);
	}
}