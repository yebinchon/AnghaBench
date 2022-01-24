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
struct TYPE_6__ {scalar_t__ encoding; int /*<<< orphan*/  input_len; int /*<<< orphan*/  input; int /*<<< orphan*/  output_len; int /*<<< orphan*/  output; } ;
struct TYPE_5__ {char* err; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  unsigned char EVP_ENCODE_CTX ;
typedef  TYPE_2__ ENCODE_DATA ;

/* Variables and functions */
 scalar_t__ BASE64_CANONICAL_ENCODING ; 
 scalar_t__ BASE64_INVALID_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 unsigned char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC15(EVP_TEST *t)
{
    ENCODE_DATA *expected = t->data;
    unsigned char *encode_out = NULL, *decode_out = NULL;
    int output_len, chunk_len;
    EVP_ENCODE_CTX *decode_ctx = NULL, *encode_ctx = NULL;

    if (!FUNC12(decode_ctx = FUNC5())) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }

    if (expected->encoding == BASE64_CANONICAL_ENCODING) {

        if (!FUNC12(encode_ctx = FUNC5())
                || !FUNC12(encode_out =
                        FUNC11(FUNC6(expected->input_len))))
            goto err;

        FUNC8(encode_ctx);
        if (!FUNC13(FUNC9(encode_ctx, encode_out, &chunk_len,
                                        expected->input, expected->input_len)))
            goto err;

        output_len = chunk_len;

        FUNC7(encode_ctx, encode_out + chunk_len, &chunk_len);
        output_len += chunk_len;

        if (!FUNC14(t, "BAD_ENCODING",
                                expected->output, expected->output_len,
                                encode_out, output_len))
            goto err;
    }

    if (!FUNC12(decode_out =
                FUNC11(FUNC0(expected->output_len))))
        goto err;

    FUNC2(decode_ctx);
    if (FUNC3(decode_ctx, decode_out, &chunk_len, expected->output,
                         expected->output_len) < 0) {
        t->err = "DECODE_ERROR";
        goto err;
    }
    output_len = chunk_len;

    if (FUNC1(decode_ctx, decode_out + chunk_len, &chunk_len) != 1) {
        t->err = "DECODE_ERROR";
        goto err;
    }
    output_len += chunk_len;

    if (expected->encoding != BASE64_INVALID_ENCODING
            && !FUNC14(t, "BAD_DECODING",
                                   expected->input, expected->input_len,
                                   decode_out, output_len)) {
        t->err = "BAD_DECODING";
        goto err;
    }

    t->err = NULL;
 err:
    FUNC10(encode_out);
    FUNC10(decode_out);
    FUNC4(decode_ctx);
    FUNC4(encode_ctx);
    return 1;
}