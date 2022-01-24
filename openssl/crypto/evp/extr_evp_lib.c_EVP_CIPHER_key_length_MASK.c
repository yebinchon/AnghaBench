#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t key_len; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ EVP_CIPHER ;

/* Variables and functions */
 int EVP_CTRL_RET_UNSUPPORTED ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 

int FUNC2(const EVP_CIPHER *cipher)
{
    int ok;
    size_t v = cipher->key_len;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = FUNC0(OSSL_CIPHER_PARAM_KEYLEN, &v);
    ok = FUNC1(cipher, params);

    return ok != 0 ? (int)v : EVP_CTRL_RET_UNSUPPORTED;
}