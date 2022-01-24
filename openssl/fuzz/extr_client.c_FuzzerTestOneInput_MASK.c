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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(const uint8_t *buf, size_t len)
{
    SSL *client;
    BIO *in;
    BIO *out;
    SSL_CTX *ctx;

    if (len == 0)
        return 0;

    /*
     * TODO: use the ossltest engine (optionally?) to disable crypto checks.
     */

    /* This only fuzzes the initial flow from the client so far. */
    ctx = FUNC6(FUNC16());

    client = FUNC9(ctx);
    FUNC4(FUNC14(client, 0) == 1);
    FUNC4(FUNC12(client, "ALL:eNULL:@SECLEVEL=0") == 1);
    FUNC15(client, "localhost");
    in = FUNC0(FUNC1());
    out = FUNC0(FUNC1());
    FUNC11(client, in, out);
    FUNC13(client);
    FUNC4((size_t)FUNC2(in, buf, len) == len);
    if (FUNC7(client) == 1) {
        /* Keep reading application data until error or EOF. */
        uint8_t tmp[1024];
        for (;;) {
            if (FUNC10(client, tmp, sizeof(tmp)) <= 0) {
                break;
            }
        }
    }
    FUNC8(client);
    FUNC3();
    FUNC5(ctx);

    return 0;
}