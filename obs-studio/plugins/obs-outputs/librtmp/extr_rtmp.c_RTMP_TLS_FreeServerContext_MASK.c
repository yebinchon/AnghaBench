#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  key; int /*<<< orphan*/  cert; } ;
typedef  TYPE_1__ tls_server_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(void *ctx)
{
#ifdef CRYPTO
#if defined(USE_MBEDTLS)
    mbedtls_x509_crt_free(&((tls_server_ctx*)ctx)->cert);
    mbedtls_pk_free(&((tls_server_ctx*)ctx)->key);
    free(ctx);
#elif defined(USE_POLARSSL)
    x509_free(&((tls_server_ctx*)ctx)->cert);
    rsa_free(&((tls_server_ctx*)ctx)->key);
    free(ctx);
#elif defined(USE_GNUTLS) && !defined(NO_SSL)
    gnutls_certificate_free_credentials(ctx);
#elif !defined(NO_SSL) /* USE_OPENSSL */
    SSL_CTX_free(ctx);
#endif

#else
    (void)ctx;
#endif
}