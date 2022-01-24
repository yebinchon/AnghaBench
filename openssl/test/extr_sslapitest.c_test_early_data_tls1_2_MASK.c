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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG1 ; 
 int /*<<< orphan*/  MSG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_NOT_SENT ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_ERROR ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_FINISH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/ * clientpsk ; 
 int /*<<< orphan*/ * serverpsk ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    unsigned char buf[20];
    size_t readbytes, written;

    if (!FUNC13(FUNC14(&cctx, &sctx, &clientssl,
                                        &serverssl, NULL, idx)))
        goto end;

    /* Write some data - should block due to handshake with server */
    FUNC7(clientssl, TLS1_2_VERSION);
    FUNC6(clientssl);
    if (!FUNC9(FUNC8(clientssl, MSG1, FUNC15(MSG1), &written)))
        goto end;

    /*
     * Server should do TLSv1.2 handshake. First it will block waiting for more
     * messages from client after ServerDone. Then SSL_read_early_data should
     * finish and detect that early data has not been sent
     */
    if (!FUNC10(FUNC4(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_ERROR))
        goto end;

    /*
     * Continue writing the message we started earlier. Will still block waiting
     * for the CCS/Finished from server
     */
    if (!FUNC9(FUNC8(clientssl, MSG1, FUNC15(MSG1), &written))
            || !FUNC10(FUNC4(serverssl, buf, sizeof(buf),
                                                &readbytes),
                            SSL_READ_EARLY_DATA_FINISH)
            || !FUNC12(readbytes, 0)
            || !FUNC10(FUNC3(serverssl),
                            SSL_EARLY_DATA_NOT_SENT))
        goto end;

    /* Continue writing the message we started earlier */
    if (!FUNC13(FUNC8(clientssl, MSG1, FUNC15(MSG1), &written))
            || !FUNC12(written, FUNC15(MSG1))
            || !FUNC10(FUNC3(clientssl),
                            SSL_EARLY_DATA_NOT_SENT)
            || !FUNC13(FUNC5(serverssl, buf, sizeof(buf), &readbytes))
            || !FUNC11(buf, readbytes, MSG1, FUNC15(MSG1))
            || !FUNC13(FUNC8(serverssl, MSG2, FUNC15(MSG2), &written))
            || !FUNC12(written, FUNC15(MSG2))
            || !FUNC5(clientssl, buf, sizeof(buf), &readbytes)
            || !FUNC11(buf, readbytes, MSG2, FUNC15(MSG2)))
        goto end;

    testresult = 1;

 end:
    FUNC1(clientpsk);
    FUNC1(serverpsk);
    clientpsk = serverpsk = NULL;
    FUNC2(serverssl);
    FUNC2(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}