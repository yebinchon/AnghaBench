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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  certstr ; 
 int /*<<< orphan*/  privkeystr ; 

__attribute__((used)) static int FUNC7(X509 **cert_out, EVP_PKEY **key_out)
{
    BIO *certbio, *keybio;
    X509 *cert = NULL;
    EVP_PKEY *key = NULL;

    if (!FUNC5(certbio = FUNC1(certstr, "r")))
        return 0;
    cert = FUNC4(certbio, NULL, NULL, NULL);
    FUNC0(certbio);
    if (!FUNC5(keybio = FUNC1(privkeystr, "r")))
        goto end;
    key = FUNC3(keybio, NULL, NULL, NULL);
    FUNC0(keybio);
    if (!FUNC5(cert) || !FUNC5(key))
        goto end;
    *cert_out = cert;
    *key_out = key;
    return 1;
 end:
    FUNC6(cert);
    FUNC2(key);
    return 0;
}