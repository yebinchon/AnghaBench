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
typedef  int /*<<< orphan*/  sess_id_ctx ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int SSL_SESS_CACHE_CLIENT ; 
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/ * clientpsk ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  find_session_cb ; 
 scalar_t__ find_session_cb_cnt ; 
 scalar_t__ new_called ; 
 int /*<<< orphan*/  new_session_cb ; 
 int /*<<< orphan*/  pskid ; 
 int /*<<< orphan*/ * serverpsk ; 
 int /*<<< orphan*/  srvid ; 
 int /*<<< orphan*/  use_session_cb ; 
 scalar_t__ use_session_cb_cnt ; 

__attribute__((used)) static int FUNC18(void)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    int testresult = 0;
    int sess_id_ctx = 1;

    if (!FUNC11(FUNC16(FUNC13(), FUNC12(),
                                       TLS1_VERSION, 0, &sctx,
                                       &cctx, NULL, NULL))
            || !FUNC11(FUNC5(sctx,
                                                         (void *)&sess_id_ctx,
                                                         sizeof(sess_id_ctx))))
        goto end;

    FUNC4(cctx, SSL_SESS_CACHE_CLIENT
                                         | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    FUNC3(cctx, use_session_cb);
    FUNC2(sctx, find_session_cb);
    FUNC1(cctx, new_session_cb);
    use_session_cb_cnt = 0;
    find_session_cb_cnt = 0;
    srvid = pskid;
    new_called = 0;

    if (!FUNC11(FUNC17(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL)))
        goto end;
    clientpsk = serverpsk = FUNC14(clientssl);
    if (!FUNC10(clientpsk))
        goto end;
    FUNC7(clientpsk);

    if (!FUNC11(FUNC15(serverssl, clientssl,
                                                SSL_ERROR_NONE))
            || !FUNC9(1, find_session_cb_cnt)
            || !FUNC9(1, use_session_cb_cnt)
               /* We should always get 1 ticket when using external PSK */
            || !FUNC9(1, new_called))
        goto end;

    testresult = 1;

 end:
    FUNC8(serverssl);
    FUNC8(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);
    FUNC6(clientpsk);
    FUNC6(serverpsk);
    clientpsk = serverpsk = NULL;

    return testresult;
}