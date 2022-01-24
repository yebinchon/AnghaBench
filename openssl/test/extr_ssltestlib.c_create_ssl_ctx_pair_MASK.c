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
typedef  int /*<<< orphan*/  SSL_METHOD ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(const SSL_METHOD *sm, const SSL_METHOD *cm,
                        int min_proto_version, int max_proto_version,
                        SSL_CTX **sctx, SSL_CTX **cctx, char *certfile,
                        char *privkeyfile)
{
    SSL_CTX *serverctx = NULL;
    SSL_CTX *clientctx = NULL;

    if (!FUNC9(serverctx = FUNC2(sm))
            || (cctx != NULL && !FUNC9(clientctx = FUNC2(cm))))
        goto err;

    if ((min_proto_version > 0
         && !FUNC10(FUNC5(serverctx,
                                                     min_proto_version)))
        || (max_proto_version > 0
            && !FUNC10(FUNC4(serverctx,
                                                        max_proto_version))))
        goto err;
    if (clientctx != NULL
        && ((min_proto_version > 0
             && !FUNC10(FUNC5(clientctx,
                                                         min_proto_version)))
            || (max_proto_version > 0
                && !FUNC10(FUNC4(clientctx,
                                                            max_proto_version)))))
        goto err;

    if (certfile != NULL && privkeyfile != NULL) {
        if (!FUNC8(FUNC7(serverctx, certfile,
                                                      SSL_FILETYPE_PEM), 1)
                || !FUNC8(FUNC6(serverctx,
                                                            privkeyfile,
                                                            SSL_FILETYPE_PEM), 1)
                || !FUNC8(FUNC0(serverctx), 1))
            goto err;
    }

#ifndef OPENSSL_NO_DH
    FUNC3(serverctx, 1);
#endif

    *sctx = serverctx;
    if (cctx != NULL)
        *cctx = clientctx;
    return 1;

 err:
    FUNC1(serverctx);
    FUNC1(clientctx);
    return 0;
}