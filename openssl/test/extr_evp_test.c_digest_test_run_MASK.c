#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int output_len; int /*<<< orphan*/  output; int /*<<< orphan*/  digest; int /*<<< orphan*/  input; } ;
struct TYPE_5__ {char* err; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  unsigned char EVP_MD_CTX ;
typedef  TYPE_2__ DIGEST_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 () ; 
 int EVP_MD_FLAG_XOF ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  digest_update_fn ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 

__attribute__((used)) static int FUNC14(EVP_TEST *t)
{
    DIGEST_DATA *expected = t->data;
    EVP_MD_CTX *mctx;
    unsigned char *got = NULL;
    unsigned int got_len;

    t->err = "TEST_FAILURE";
    if (!FUNC10(mctx = FUNC5()))
        goto err;

    got = FUNC8(expected->output_len > EVP_MAX_MD_SIZE ?
                         expected->output_len : EVP_MAX_MD_SIZE);
    if (!FUNC10(got))
        goto err;

    if (!FUNC2(mctx, expected->digest, NULL)) {
        t->err = "DIGESTINIT_ERROR";
        goto err;
    }
    if (!FUNC12(expected->input, digest_update_fn, mctx)) {
        t->err = "DIGESTUPDATE_ERROR";
        goto err;
    }

    if (FUNC6(expected->digest) & EVP_MD_FLAG_XOF) {
        EVP_MD_CTX *mctx_cpy;
        char dont[] = "touch";

        if (!FUNC10(mctx_cpy = FUNC5())) {
            goto err;
        }
        if (!FUNC3(mctx_cpy, mctx)) {
            FUNC4(mctx_cpy);
            goto err;
        }
        if (!FUNC1(mctx_cpy, (unsigned char *)dont, 0)) {
            FUNC4(mctx_cpy);
            t->err = "DIGESTFINALXOF_ERROR";
            goto err;
        }
        if (!FUNC11(dont, "touch")) {
            FUNC4(mctx_cpy);
            t->err = "DIGESTFINALXOF_ERROR";
            goto err;
        }
        FUNC4(mctx_cpy);

        got_len = expected->output_len;
        if (!FUNC1(mctx, got, got_len)) {
            t->err = "DIGESTFINALXOF_ERROR";
            goto err;
        }
    } else {
        if (!FUNC0(mctx, got, &got_len)) {
            t->err = "DIGESTFINAL_ERROR";
            goto err;
        }
    }
    if (!FUNC9(expected->output_len, got_len)) {
        t->err = "DIGEST_LENGTH_MISMATCH";
        goto err;
    }
    if (!FUNC13(t, "DIGEST_MISMATCH",
                            expected->output, expected->output_len,
                            got, got_len))
        goto err;

    t->err = NULL;

 err:
    FUNC7(got);
    FUNC4(mctx);
    return 1;
}