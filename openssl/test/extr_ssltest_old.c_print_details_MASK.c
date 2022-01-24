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
typedef  int /*<<< orphan*/  SSL_CIPHER ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_stdout ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(SSL *c_ssl, const char *prefix)
{
    const SSL_CIPHER *ciph;
    int mdnid;
    X509 *cert;
    EVP_PKEY *pkey;

    ciph = FUNC6(c_ssl);
    FUNC0(bio_stdout, "%s%s, cipher %s %s",
               prefix,
               FUNC10(c_ssl),
               FUNC5(ciph), FUNC4(ciph));
    cert = FUNC7(c_ssl);
    if (cert != NULL) {
        EVP_PKEY* pubkey = FUNC12(cert);

        if (pubkey != NULL) {
            FUNC1(bio_stdout, ", ");
            FUNC13(bio_stdout, pubkey);
        }
        FUNC11(cert);
    }
    if (FUNC9(c_ssl, &pkey)) {
        FUNC1(bio_stdout, ", temp key: ");
        FUNC13(bio_stdout, pkey);
        FUNC2(pkey);
    }
    if (FUNC8(c_ssl, &mdnid))
        FUNC0(bio_stdout, ", digest=%s", FUNC3(mdnid));
    FUNC0(bio_stdout, "\n");
}