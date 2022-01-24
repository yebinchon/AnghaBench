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
struct TYPE_2__ {struct TYPE_2__* prev; int /*<<< orphan*/ * chain; scalar_t__ build_chain; int /*<<< orphan*/  key; int /*<<< orphan*/  cert; struct TYPE_2__* next; } ;
typedef  TYPE_1__ SSL_EXCERT ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int CERT_PKEY_VALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(SSL *ssl, void *arg)
{
    int i, rv;
    SSL_EXCERT *exc = arg;
#ifdef CERT_CB_TEST_RETRY
    static int retry_cnt;
    if (retry_cnt < 5) {
        retry_cnt++;
        BIO_printf(bio_err,
                   "Certificate callback retry test: count %d\n",
                   retry_cnt);
        return -1;
    }
#endif
    FUNC3(ssl);

    if (exc == NULL)
        return 1;

    /*
     * Go to end of list and traverse backwards since we prepend newer
     * entries this retains the original order.
     */
    while (exc->next != NULL)
        exc = exc->next;

    i = 0;

    while (exc != NULL) {
        i++;
        rv = FUNC4(ssl, exc->cert, exc->key, exc->chain);
        FUNC0(bio_err, "Checking cert chain %d:\nSubject: ", i);
        FUNC8(bio_err, FUNC9(exc->cert), 0,
                           FUNC10());
        FUNC1(bio_err, "\n");
        FUNC11(ssl, rv);
        if (rv & CERT_PKEY_VALID) {
            if (!FUNC7(ssl, exc->cert)
                    || !FUNC6(ssl, exc->key)) {
                return 0;
            }
            /*
             * NB: we wouldn't normally do this as it is not efficient
             * building chains on each connection better to cache the chain
             * in advance.
             */
            if (exc->build_chain) {
                if (!FUNC2(ssl, 0))
                    return 0;
            } else if (exc->chain != NULL) {
                FUNC5(ssl, exc->chain);
            }
        }
        exc = exc->prev;
    }
    return 1;
}