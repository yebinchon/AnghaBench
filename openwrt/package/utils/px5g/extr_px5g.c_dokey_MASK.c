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
typedef  int /*<<< orphan*/  mbedtls_pk_context ;
typedef  scalar_t__ mbedtls_ecp_group_id ;

/* Variables and functions */
 scalar_t__ MBEDTLS_ECP_DP_NONE ; 
 scalar_t__ MBEDTLS_ECP_DP_SECP256R1 ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,unsigned int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC7(bool rsa, char **arg)
{
	mbedtls_pk_context key;
	unsigned int ksize = 512;
	int exp = 65537;
	char *path = NULL;
	bool pem = true;
	mbedtls_ecp_group_id curve = MBEDTLS_ECP_DP_SECP256R1;

	while (*arg && **arg == '-') {
		if (!FUNC5(*arg, "-out") && arg[1]) {
			path = arg[1];
			arg++;
		} else if (!FUNC5(*arg, "-3")) {
			exp = 3;
		} else if (!FUNC5(*arg, "-der")) {
			pem = false;
		}
		arg++;
	}

	if (*arg && rsa) {
		ksize = (unsigned int)FUNC0(*arg);
	} else if (*arg) {
		curve = FUNC1((const char *)*arg);
		if (curve == MBEDTLS_ECP_DP_NONE) {
			FUNC2(stderr, "error: invalid curve name: %s\n", *arg);
			return 1;
		}
	}

	FUNC3(&key, rsa, ksize, exp, curve, pem);
	FUNC6(&key, path, pem);

	FUNC4(&key);

	return 0;
}