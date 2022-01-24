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
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned char* MSG1 ; 
 unsigned char* MSG2 ; 
 unsigned char* MSG3 ; 
 unsigned char* MSG4 ; 
 unsigned char* MSG5 ; 
 unsigned char* MSG6 ; 
 unsigned char* MSG7 ; 
 unsigned char SSL3_RT_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_ACCEPTED ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_ERROR ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_FINISH ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,size_t,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC22 (size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC23 (size_t,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * clientpsk ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ find_session_cb_cnt ; 
 int /*<<< orphan*/ * serverpsk ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 size_t FUNC27 (unsigned char*) ; 
 scalar_t__ use_session_cb_cnt ; 

__attribute__((used)) static int FUNC28(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    SSL_SESSION *sess = NULL;
    unsigned char buf[20], data[1024];
    size_t readbytes, written, eoedlen, rawread, rawwritten;
    BIO *rbio;

    if (!FUNC24(FUNC26(&cctx, &sctx, &clientssl,
                                        &serverssl, &sess, idx)))
        goto end;

    /* Write and read some early data */
    if (!FUNC24(FUNC15(clientssl, MSG1, FUNC27(MSG1),
                                        &written))
            || !FUNC21(written, FUNC27(MSG1))
            || !FUNC18(FUNC11(serverssl, buf,
                                                sizeof(buf), &readbytes),
                            SSL_READ_EARLY_DATA_SUCCESS)
            || !FUNC20(MSG1, readbytes, buf, FUNC27(MSG1))
            || !FUNC18(FUNC9(serverssl),
                            SSL_EARLY_DATA_ACCEPTED))
        goto end;

    /*
     * Server should be able to write data, and client should be able to
     * read it.
     */
    if (!FUNC24(FUNC15(serverssl, MSG2, FUNC27(MSG2),
                                        &written))
            || !FUNC21(written, FUNC27(MSG2))
            || !FUNC24(FUNC12(clientssl, buf, sizeof(buf), &readbytes))
            || !FUNC20(buf, readbytes, MSG2, FUNC27(MSG2)))
        goto end;

    /* Even after reading normal data, client should be able write early data */
    if (!FUNC24(FUNC15(clientssl, MSG3, FUNC27(MSG3),
                                        &written))
            || !FUNC21(written, FUNC27(MSG3)))
        goto end;

    /* Server should still be able read early data after writing data */
    if (!FUNC18(FUNC11(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_SUCCESS)
            || !FUNC20(buf, readbytes, MSG3, FUNC27(MSG3)))
        goto end;

    /* Write more data from server and read it from client */
    if (!FUNC24(FUNC15(serverssl, MSG4, FUNC27(MSG4),
                                        &written))
            || !FUNC21(written, FUNC27(MSG4))
            || !FUNC24(FUNC12(clientssl, buf, sizeof(buf), &readbytes))
            || !FUNC20(buf, readbytes, MSG4, FUNC27(MSG4)))
        goto end;

    /*
     * If client writes normal data it should mean writing early data is no
     * longer possible.
     */
    if (!FUNC24(FUNC16(clientssl, MSG5, FUNC27(MSG5), &written))
            || !FUNC21(written, FUNC27(MSG5))
            || !FUNC18(FUNC9(clientssl),
                            SSL_EARLY_DATA_ACCEPTED))
        goto end;

    /*
     * At this point the client has written EndOfEarlyData, ClientFinished and
     * normal (fully protected) data. We are going to cause a delay between the
     * arrival of EndOfEarlyData and ClientFinished. We read out all the data
     * in the read BIO, and then just put back the EndOfEarlyData message.
     */
    rbio = FUNC10(serverssl);
    if (!FUNC24(FUNC0(rbio, data, sizeof(data), &rawread))
            || !FUNC23(rawread, sizeof(data))
            || !FUNC22(rawread, SSL3_RT_HEADER_LENGTH))
        goto end;

    /* Record length is in the 4th and 5th bytes of the record header */
    eoedlen = SSL3_RT_HEADER_LENGTH + (data[3] << 8 | data[4]);
    if (!FUNC24(FUNC1(rbio, data, eoedlen, &rawwritten))
            || !FUNC21(rawwritten, eoedlen))
        goto end;

    /* Server should be told that there is no more early data */
    if (!FUNC18(FUNC11(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_FINISH)
            || !FUNC21(readbytes, 0))
        goto end;

    /*
     * Server has not finished init yet, so should still be able to write early
     * data.
     */
    if (!FUNC24(FUNC15(serverssl, MSG6, FUNC27(MSG6),
                                        &written))
            || !FUNC21(written, FUNC27(MSG6)))
        goto end;

    /* Push the ClientFinished and the normal data back into the server rbio */
    if (!FUNC24(FUNC1(rbio, data + eoedlen, rawread - eoedlen,
                                &rawwritten))
            || !FUNC21(rawwritten, rawread - eoedlen))
        goto end;

    /* Server should be able to read normal data */
    if (!FUNC24(FUNC12(serverssl, buf, sizeof(buf), &readbytes))
            || !FUNC21(readbytes, FUNC27(MSG5)))
        goto end;

    /* Client and server should not be able to write/read early data now */
    if (!FUNC17(FUNC15(clientssl, MSG6, FUNC27(MSG6),
                                         &written)))
        goto end;
    FUNC2();
    if (!FUNC18(FUNC11(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_ERROR))
        goto end;
    FUNC2();

    /* Client should be able to read the data sent by the server */
    if (!FUNC24(FUNC12(clientssl, buf, sizeof(buf), &readbytes))
            || !FUNC20(buf, readbytes, MSG6, FUNC27(MSG6)))
        goto end;

    /*
     * Make sure we process the two NewSessionTickets. These arrive
     * post-handshake. We attempt reads which we do not expect to return any
     * data.
     */
    if (!FUNC17(FUNC12(clientssl, buf, sizeof(buf), &readbytes))
            || !FUNC17(FUNC12(clientssl, buf, sizeof(buf),
                           &readbytes)))
        goto end;

    /* Server should be able to write normal data */
    if (!FUNC24(FUNC16(serverssl, MSG7, FUNC27(MSG7), &written))
            || !FUNC21(written, FUNC27(MSG7))
            || !FUNC24(FUNC12(clientssl, buf, sizeof(buf), &readbytes))
            || !FUNC20(buf, readbytes, MSG7, FUNC27(MSG7)))
        goto end;

    FUNC4(sess);
    sess = FUNC8(clientssl);
    use_session_cb_cnt = 0;
    find_session_cb_cnt = 0;

    FUNC14(clientssl);
    FUNC14(serverssl);
    FUNC7(serverssl);
    FUNC7(clientssl);
    serverssl = clientssl = NULL;
    if (!FUNC24(FUNC25(sctx, cctx, &serverssl,
                                      &clientssl, NULL, NULL))
            || !FUNC24(FUNC13(clientssl, sess)))
        goto end;

    /* Write and read some early data */
    if (!FUNC24(FUNC15(clientssl, MSG1, FUNC27(MSG1),
                                        &written))
            || !FUNC21(written, FUNC27(MSG1))
            || !FUNC18(FUNC11(serverssl, buf, sizeof(buf),
                                                &readbytes),
                            SSL_READ_EARLY_DATA_SUCCESS)
            || !FUNC20(buf, readbytes, MSG1, FUNC27(MSG1)))
        goto end;

    if (!FUNC19(FUNC6(clientssl), 0)
            || !FUNC19(FUNC5(serverssl), 0))
        goto end;

    /* Client and server should not be able to write/read early data now */
    if (!FUNC17(FUNC15(clientssl, MSG6, FUNC27(MSG6),
                                         &written)))
        goto end;
    FUNC2();
    if (!FUNC18(FUNC11(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_ERROR))
        goto end;
    FUNC2();

    /* Client and server should be able to write/read normal data */
    if (!FUNC24(FUNC16(clientssl, MSG5, FUNC27(MSG5), &written))
            || !FUNC21(written, FUNC27(MSG5))
            || !FUNC24(FUNC12(serverssl, buf, sizeof(buf), &readbytes))
            || !FUNC21(readbytes, FUNC27(MSG5)))
        goto end;

    testresult = 1;

 end:
    FUNC4(sess);
    FUNC4(clientpsk);
    FUNC4(serverpsk);
    clientpsk = serverpsk = NULL;
    FUNC7(serverssl);
    FUNC7(clientssl);
    FUNC3(sctx);
    FUNC3(cctx);
    return testresult;
}