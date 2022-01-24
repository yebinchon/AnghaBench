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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(SSL_CTX *serverctx, SSL_CTX *clientctx, SSL **sssl,
                          SSL **cssl, BIO *s_to_c_fbio, BIO *c_to_s_fbio)
{
    SSL *serverssl = NULL, *clientssl = NULL;
    BIO *s_to_c_bio = NULL, *c_to_s_bio = NULL;

    if (*sssl != NULL)
        serverssl = *sssl;
    else if (!FUNC10(serverssl = FUNC8(serverctx)))
        goto error;
    if (*cssl != NULL)
        clientssl = *cssl;
    else if (!FUNC10(clientssl = FUNC8(clientctx)))
        goto error;

    if (FUNC7(clientssl)) {
        if (!FUNC10(s_to_c_bio = FUNC1(FUNC11()))
                || !FUNC10(c_to_s_bio = FUNC1(FUNC11())))
            goto error;
    } else {
        if (!FUNC10(s_to_c_bio = FUNC1(FUNC3()))
                || !FUNC10(c_to_s_bio = FUNC1(FUNC3())))
            goto error;
    }

    if (s_to_c_fbio != NULL
            && !FUNC10(s_to_c_bio = FUNC2(s_to_c_fbio, s_to_c_bio)))
        goto error;
    if (c_to_s_fbio != NULL
            && !FUNC10(c_to_s_bio = FUNC2(c_to_s_fbio, c_to_s_bio)))
        goto error;

    /* Set Non-blocking IO behaviour */
    FUNC4(s_to_c_bio, -1);
    FUNC4(c_to_s_bio, -1);

    /* Up ref these as we are passing them to two SSL objects */
    FUNC9(serverssl, c_to_s_bio, s_to_c_bio);
    FUNC5(s_to_c_bio);
    FUNC5(c_to_s_bio);
    FUNC9(clientssl, s_to_c_bio, c_to_s_bio);
    *sssl = serverssl;
    *cssl = clientssl;
    return 1;

 error:
    FUNC6(serverssl);
    FUNC6(clientssl);
    FUNC0(s_to_c_bio);
    FUNC0(c_to_s_bio);
    FUNC0(s_to_c_fbio);
    FUNC0(c_to_s_fbio);

    return 0;
}