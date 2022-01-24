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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  SSL3_RT_MAX_PLAIN_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/ * clientpsk ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  find_session_cb ; 
 scalar_t__ find_session_cb_cnt ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  pskid ; 
 int /*<<< orphan*/ * serverpsk ; 
 int /*<<< orphan*/  srvid ; 
 int /*<<< orphan*/  use_session_cb ; 
 scalar_t__ use_session_cb_cnt ; 

__attribute__((used)) static int FUNC20(SSL_CTX **cctx, SSL_CTX **sctx, SSL **clientssl,
                                SSL **serverssl, SSL_SESSION **sess, int idx)
{
    if (*sctx == NULL
            && !FUNC13(FUNC18(FUNC15(),
                                              FUNC14(),
                                              TLS1_VERSION, 0,
                                              sctx, cctx, cert, privkey)))
        return 0;

    if (!FUNC13(FUNC0(*sctx, SSL3_RT_MAX_PLAIN_LENGTH)))
        return 0;

    if (idx == 1) {
        /* When idx == 1 we repeat the tests with read_ahead set */
        FUNC3(*cctx, 1);
        FUNC3(*sctx, 1);
    } else if (idx == 2) {
        /* When idx == 2 we are doing early_data with a PSK. Set up callbacks */
        FUNC2(*cctx, use_session_cb);
        FUNC1(*sctx, find_session_cb);
        use_session_cb_cnt = 0;
        find_session_cb_cnt = 0;
        srvid = pskid;
    }

    if (!FUNC13(FUNC19(*sctx, *cctx, serverssl, clientssl,
                                      NULL, NULL)))
        return 0;

    /*
     * For one of the run throughs (doesn't matter which one), we'll try sending
     * some SNI data in the initial ClientHello. This will be ignored (because
     * there is no SNI cb set up by the server), so it should not impact
     * early_data.
     */
    if (idx == 1
            && !FUNC13(FUNC10(*clientssl, "localhost")))
        return 0;

    if (idx == 2) {
        clientpsk = FUNC16(*clientssl);
        if (!FUNC12(clientpsk)
                   /*
                    * We just choose an arbitrary value for max_early_data which
                    * should be big enough for testing purposes.
                    */
                || !FUNC13(FUNC5(clientpsk,
                                                             0x100))
                || !FUNC13(FUNC6(clientpsk))) {
            FUNC4(clientpsk);
            clientpsk = NULL;
            return 0;
        }
        serverpsk = clientpsk;

        if (sess != NULL) {
            if (!FUNC13(FUNC6(clientpsk))) {
                FUNC4(clientpsk);
                FUNC4(serverpsk);
                clientpsk = serverpsk = NULL;
                return 0;
            }
            *sess = clientpsk;
        }
        return 1;
    }

    if (sess == NULL)
        return 1;

    if (!FUNC13(FUNC17(*serverssl, *clientssl,
                                         SSL_ERROR_NONE)))
        return 0;

    *sess = FUNC8(*clientssl);
    FUNC11(*clientssl);
    FUNC11(*serverssl);
    FUNC7(*serverssl);
    FUNC7(*clientssl);
    *serverssl = *clientssl = NULL;

    if (!FUNC13(FUNC19(*sctx, *cctx, serverssl,
                                      clientssl, NULL, NULL))
            || !FUNC13(FUNC9(*clientssl, *sess)))
        return 0;

    return 1;
}