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
 int /*<<< orphan*/  SSL_EARLY_DATA_NOT_SENT ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_FINISH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * clientpsk ; 
 int /*<<< orphan*/ * serverpsk ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    SSL_SESSION *sess = NULL;
    unsigned char buf[20];
    size_t readbytes, written;

    if (!FUNC12(FUNC13(&cctx, &sctx, &clientssl,
                                        &serverssl, &sess, idx)))
        goto end;

    /* Write some data - should block due to handshake with server */
    FUNC6(clientssl);
    if (!FUNC8(FUNC7(clientssl, MSG1, FUNC14(MSG1), &written)))
        goto end;

    /* Server should detect that early data has not been sent */
    if (!FUNC9(FUNC4(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_FINISH)
            || !FUNC11(readbytes, 0)
            || !FUNC9(FUNC3(serverssl),
                            SSL_EARLY_DATA_NOT_SENT)
            || !FUNC9(FUNC3(clientssl),
                            SSL_EARLY_DATA_NOT_SENT))
        goto end;

    /* Continue writing the message we started earlier */
    if (!FUNC12(FUNC7(clientssl, MSG1, FUNC14(MSG1), &written))
            || !FUNC11(written, FUNC14(MSG1))
            || !FUNC12(FUNC5(serverssl, buf, sizeof(buf), &readbytes))
            || !FUNC10(buf, readbytes, MSG1, FUNC14(MSG1))
            || !FUNC7(serverssl, MSG2, FUNC14(MSG2), &written)
            || !FUNC11(written, FUNC14(MSG2)))
        goto end;

    if (!FUNC12(FUNC5(clientssl, buf, sizeof(buf), &readbytes))
            || !FUNC10(buf, readbytes, MSG2, FUNC14(MSG2)))
        goto end;

    testresult = 1;

 end:
    FUNC1(sess);
    FUNC1(clientpsk);
    FUNC1(serverpsk);
    clientpsk = serverpsk = NULL;
    FUNC2(serverssl);
    FUNC2(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);
    return testresult;
}