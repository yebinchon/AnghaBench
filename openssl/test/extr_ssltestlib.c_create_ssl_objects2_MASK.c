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
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(SSL_CTX *serverctx, SSL_CTX *clientctx, SSL **sssl,
                          SSL **cssl, int sfd, int cfd)
{
    SSL *serverssl = NULL, *clientssl = NULL;
    BIO *s_to_c_bio = NULL, *c_to_s_bio = NULL;

    if (*sssl != NULL)
        serverssl = *sssl;
    else if (!FUNC5(serverssl = FUNC3(serverctx)))
        goto error;
    if (*cssl != NULL)
        clientssl = *cssl;
    else if (!FUNC5(clientssl = FUNC3(clientctx)))
        goto error;

    if (!FUNC5(s_to_c_bio = FUNC1(sfd, BIO_NOCLOSE))
            || !FUNC5(c_to_s_bio = FUNC1(cfd, BIO_NOCLOSE)))
        goto error;

    FUNC4(clientssl, c_to_s_bio, c_to_s_bio);
    FUNC4(serverssl, s_to_c_bio, s_to_c_bio);
    *sssl = serverssl;
    *cssl = clientssl;
    return 1;

 error:
    FUNC2(serverssl);
    FUNC2(clientssl);
    FUNC0(s_to_c_bio);
    FUNC0(c_to_s_bio);
    return 0;
}