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
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 unsigned short FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  COOKIE_SECRET_LENGTH ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC13 (size_t,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int cookie_initialized ; 
 int /*<<< orphan*/  cookie_secret ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,unsigned short*,int) ; 
 int /*<<< orphan*/ * ourpeer ; 

int FUNC15(SSL *ssl, unsigned char *cookie,
                             unsigned int *cookie_len)
{
    unsigned char *buffer;
    size_t length = 0;
    unsigned short port;
    BIO_ADDR *lpeer = NULL, *peer = NULL;

    /* Initialize a random secret */
    if (!cookie_initialized) {
        if (FUNC10(cookie_secret, COOKIE_SECRET_LENGTH) <= 0) {
            FUNC5(bio_err, "error setting random cookie secret\n");
            return 0;
        }
        cookie_initialized = 1;
    }

    if (FUNC12(ssl)) {
        lpeer = peer = FUNC1();
        if (peer == NULL) {
            FUNC5(bio_err, "memory full\n");
            return 0;
        }

        /* Read peer information */
        (void)FUNC4(FUNC11(ssl), peer);
    } else {
        peer = ourpeer;
    }

    /* Create buffer with peer's address and port */
    if (!FUNC2(peer, NULL, &length)) {
        FUNC5(bio_err, "Failed getting peer address\n");
        return 0;
    }
    FUNC8(length != 0);
    port = FUNC3(peer);
    length += sizeof(port);
    buffer = FUNC13(length, "cookie generate buffer");

    FUNC14(buffer, &port, sizeof(port));
    FUNC2(peer, buffer + sizeof(port), NULL);

    /* Calculate HMAC of buffer using the secret */
    FUNC7(FUNC6(), cookie_secret, COOKIE_SECRET_LENGTH,
         buffer, length, cookie, cookie_len);

    FUNC9(buffer);
    FUNC0(lpeer);

    return 1;
}