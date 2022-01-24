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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static SSL_CTX *FUNC6(char *cert_path, char *key_path)  /* {{{ */
{
	/* The hello method is not inherited by SSL structs when assigning a new context
	 * inside the SNI callback, so the just use SSLv23 */
	SSL_CTX *ctx = FUNC1(FUNC4());

	if (FUNC3(ctx, cert_path) != 1) {
		FUNC5(NULL, E_WARNING,
			"failed setting local cert chain file `%s'; " \
			"check that your cafile/capath settings include " \
			"details of your certificate and its issuer",
			cert_path
		);
		FUNC0(ctx);
		return NULL;
	} else if (FUNC2(ctx, key_path, SSL_FILETYPE_PEM) != 1) {
		FUNC5(NULL, E_WARNING,
			"failed setting private key from file `%s'",
			key_path
		);
		FUNC0(ctx);
		return NULL;
	}

	return ctx;
}