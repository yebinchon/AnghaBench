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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC7(SSL *ssl, X509 **x509, EVP_PKEY **pkey)
{
    X509 *xcert, *peer;
    EVP_PKEY *privpkey;
    BIO *in = NULL;

    /* Check that SSL_get_peer_certificate() returns something sensible */
    peer = FUNC4(ssl);
    if (!FUNC5(peer))
        return 0;
    FUNC6(peer);

    in = FUNC1(cert, "r");
    if (!FUNC5(in))
        return 0;

    xcert = FUNC3(in, NULL, NULL, NULL);
    FUNC0(in);
    if (!FUNC5(xcert))
        return 0;

    in = FUNC1(privkey, "r");
    if (!FUNC5(in)) {
        FUNC6(xcert);
        return 0;
    }

    privpkey = FUNC2(in, NULL, NULL, NULL);
    FUNC0(in);
    if (!FUNC5(privpkey)) {
        FUNC6(xcert);
        return 0;
    }

    *x509 = xcert;
    *pkey = privpkey;

    return 1;
}