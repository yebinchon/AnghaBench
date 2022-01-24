#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int type; scalar_t__ param_bin_len; int /*<<< orphan*/  param_bin; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* pkey_params ; 

__attribute__((used)) static int FUNC13(int id)
{
    int ret, out_len;
    BIO *in = NULL, *out = NULL;
    EVP_PKEY_CTX *ctx = NULL;
    EVP_PKEY *in_key = NULL, *out_key = NULL;
    unsigned char *out_bin;
    int type = pkey_params[id].type;

    ret = FUNC10(ctx = FUNC6(type, NULL))
        && FUNC10(in = FUNC3(pkey_params[id].param_bin,
                                        (int)pkey_params[id].param_bin_len))
        /* Load in pkey params from binary */
        && FUNC10(FUNC11(type, &in_key, in))
        && FUNC10(out = FUNC2(FUNC4()))
        /* Save pkey params to binary */
        && FUNC8(FUNC12(out, in_key), 0)
        /* test the output binary is the expected value */
        && FUNC8(out_len = FUNC1(out, &out_bin), 0)
        && FUNC9(pkey_params[id].param_bin,
                       (int)pkey_params[id].param_bin_len,
                       out_bin, out_len);

    FUNC0(in);
    FUNC0(out);
    FUNC7(in_key);
    FUNC7(out_key);
    FUNC5(ctx);
    return ret;
}