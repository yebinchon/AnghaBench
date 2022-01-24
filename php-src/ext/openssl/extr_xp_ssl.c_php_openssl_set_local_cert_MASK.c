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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int SUCCESS ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(SSL_CTX *ctx, php_stream *stream) /* {{{ */
{
	zval *val = NULL;
	char *certfile = NULL;

	FUNC0("local_cert", certfile);

	if (certfile) {
		char resolved_path_buff[MAXPATHLEN];
		const char *private_key = NULL;

		if (FUNC4(certfile, resolved_path_buff)) {
			/* a certificate to use for authentication */
			if (FUNC3(ctx, resolved_path_buff) != 1) {
				FUNC5(NULL, E_WARNING,
					"Unable to set local cert chain file `%s'; Check that your cafile/capath "
					"settings include details of your certificate and its issuer",
					certfile);
				return FAILURE;
			}
			FUNC0("local_pk", private_key);

			if (private_key) {
				char resolved_path_buff_pk[MAXPATHLEN];
				if (FUNC4(private_key, resolved_path_buff_pk)) {
					if (FUNC2(ctx, resolved_path_buff_pk, SSL_FILETYPE_PEM) != 1) {
						FUNC5(NULL, E_WARNING, "Unable to set private key file `%s'", resolved_path_buff_pk);
						return FAILURE;
					}
				}
			} else {
				if (FUNC2(ctx, resolved_path_buff, SSL_FILETYPE_PEM) != 1) {
					FUNC5(NULL, E_WARNING, "Unable to set private key file `%s'", resolved_path_buff);
					return FAILURE;
				}
			}

			if (!FUNC1(ctx)) {
				FUNC5(NULL, E_WARNING, "Private key does not match certificate!");
			}
		}
	}

	return SUCCESS;
}