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
typedef  int /*<<< orphan*/  skeymat2 ;
typedef  int /*<<< orphan*/  skeymat1 ;
typedef  int /*<<< orphan*/  label ;
typedef  int /*<<< orphan*/  context ;
typedef  int /*<<< orphan*/  ckeymat2 ;
typedef  int /*<<< orphan*/  ckeymat1 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SSL_EARLY_DATA_ACCEPTED ; 
 int SSL_READ_EARLY_DATA_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,char const*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * clientpsk ; 
 int /*<<< orphan*/ * serverpsk ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static int FUNC12(int idx)
{
    static const char label[] = "test label";
    static const unsigned char context[] = "context";
    int testresult = 0;
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    SSL_SESSION *sess = NULL;
    const unsigned char *emptycontext = NULL;
    unsigned char ckeymat1[80], ckeymat2[80];
    unsigned char skeymat1[80], skeymat2[80];
    unsigned char buf[1];
    size_t readbytes, written;

    if (!FUNC10(FUNC11(&cctx, &sctx, &clientssl, &serverssl,
                                        &sess, idx)))
        goto end;

    /* Here writing 0 length early data is enough. */
    if (!FUNC10(FUNC6(clientssl, NULL, 0, &written))
            || !FUNC7(FUNC5(serverssl, buf, sizeof(buf),
                                                &readbytes),
                            SSL_READ_EARLY_DATA_ERROR)
            || !FUNC7(FUNC4(serverssl),
                            SSL_EARLY_DATA_ACCEPTED))
        goto end;

    if (!FUNC7(FUNC2(
                     clientssl, ckeymat1, sizeof(ckeymat1), label,
                     sizeof(label) - 1, context, sizeof(context) - 1), 1)
            || !FUNC7(FUNC2(
                            clientssl, ckeymat2, sizeof(ckeymat2), label,
                            sizeof(label) - 1, emptycontext, 0), 1)
            || !FUNC7(FUNC2(
                            serverssl, skeymat1, sizeof(skeymat1), label,
                            sizeof(label) - 1, context, sizeof(context) - 1), 1)
            || !FUNC7(FUNC2(
                            serverssl, skeymat2, sizeof(skeymat2), label,
                            sizeof(label) - 1, emptycontext, 0), 1)
               /*
                * Check that both sides created the same key material with the
                * same context.
                */
            || !FUNC8(ckeymat1, sizeof(ckeymat1), skeymat1,
                            sizeof(skeymat1))
               /*
                * Check that both sides created the same key material with an
                * empty context.
                */
            || !FUNC8(ckeymat2, sizeof(ckeymat2), skeymat2,
                            sizeof(skeymat2))
               /* Different contexts should produce different results */
            || !FUNC9(ckeymat1, sizeof(ckeymat1), ckeymat2,
                            sizeof(ckeymat2)))
        goto end;

    testresult = 1;

 end:
    FUNC1(sess);
    FUNC1(clientpsk);
    FUNC1(serverpsk);
    clientpsk = serverpsk = NULL;
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}