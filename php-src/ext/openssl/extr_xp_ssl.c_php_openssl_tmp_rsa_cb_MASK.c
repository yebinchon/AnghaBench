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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  RSA_F4 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static RSA *FUNC7(SSL *s, int is_export, int keylength)
{
	BIGNUM *bn = NULL;
	static RSA *rsa_tmp = NULL;

	if (!rsa_tmp && ((bn = FUNC1()) == NULL)) {
		FUNC6(NULL, E_WARNING, "allocation error generating RSA key");
	}
	if (!rsa_tmp && bn) {
		if (!FUNC2(bn, RSA_F4) || ((rsa_tmp = FUNC5()) == NULL) ||
			!FUNC4(rsa_tmp, keylength, bn, NULL)) {
			if (rsa_tmp) {
				FUNC3(rsa_tmp);
			}
			rsa_tmp = NULL;
		}
		FUNC0(bn);
	}

	return (rsa_tmp);
}