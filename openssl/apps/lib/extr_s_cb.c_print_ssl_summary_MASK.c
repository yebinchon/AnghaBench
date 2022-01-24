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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC21(SSL *s)
{
    const SSL_CIPHER *c;
    X509 *peer;

    FUNC0(bio_err, "Protocol version: %s\n", FUNC8(s));
    FUNC16(s);
    c = FUNC4(s);
    FUNC0(bio_err, "Ciphersuite: %s\n", FUNC3(c));
    FUNC13(bio_err, s, 0);
    peer = FUNC5(s);
    if (peer != NULL) {
        int nid;

        FUNC1(bio_err, "Peer certificate: ");
        FUNC10(bio_err, FUNC12(peer),
                           0, FUNC14());
        FUNC1(bio_err, "\n");
        if (FUNC6(s, &nid))
            FUNC0(bio_err, "Hash used: %s\n", FUNC2(nid));
        if (FUNC7(s, &nid))
            FUNC0(bio_err, "Signature type: %s\n", FUNC15(nid));
        FUNC17(s, bio_err);
    } else {
        FUNC1(bio_err, "No peer certificate\n");
    }
    FUNC11(peer);
#ifndef OPENSSL_NO_EC
    FUNC19(bio_err, s);
    if (FUNC9(s))
        FUNC18(bio_err, s, 1);
    else
        FUNC20(bio_err, s);
#else
    if (!SSL_is_server(s))
        ssl_print_tmp_key(bio_err, s);
#endif
}