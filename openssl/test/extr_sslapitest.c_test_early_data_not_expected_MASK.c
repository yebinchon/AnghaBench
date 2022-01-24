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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG1 ; 
 int /*<<< orphan*/  MSG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * clientpsk ; 
 int /*<<< orphan*/ * serverpsk ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    SSL_SESSION *sess = NULL;
    unsigned char buf[20];
    size_t readbytes, written;

    if (!FUNC14(FUNC15(&cctx, &sctx, &clientssl,
                                        &serverssl, &sess, idx)))
        goto end;

    /* Write some early data */
    if (!FUNC14(FUNC7(clientssl, MSG1, FUNC16(MSG1),
                                        &written)))
        goto end;

    /*
     * Server should skip over early data and then block waiting for client to
     * continue handshake
     */
    if (!FUNC11(FUNC2(serverssl), 0)
     || !FUNC10(FUNC3(clientssl), 0)
     || !FUNC9(FUNC5(serverssl),
                     SSL_EARLY_DATA_REJECTED)
     || !FUNC10(FUNC2(serverssl), 0)
     || !FUNC9(FUNC5(clientssl),
                     SSL_EARLY_DATA_REJECTED))
        goto end;

    /* Send some normal data from client to server */
    if (!FUNC14(FUNC8(clientssl, MSG2, FUNC16(MSG2), &written))
            || !FUNC13(written, FUNC16(MSG2)))
        goto end;

    if (!FUNC14(FUNC6(serverssl, buf, sizeof(buf), &readbytes))
            || !FUNC12(buf, readbytes, MSG2, FUNC16(MSG2)))
        goto end;

    testresult = 1;

 end:
    FUNC1(sess);
    FUNC1(clientpsk);
    FUNC1(serverpsk);
    clientpsk = serverpsk = NULL;
    FUNC4(serverssl);
    FUNC4(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);
    return testresult;
}