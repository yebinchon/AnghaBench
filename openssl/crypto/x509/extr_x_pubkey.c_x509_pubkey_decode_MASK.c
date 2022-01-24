#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* algor; } ;
typedef  TYPE_3__ X509_PUBKEY ;
struct TYPE_15__ {TYPE_2__* ameth; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* pub_decode ) (TYPE_4__*,TYPE_3__*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_4__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_F_X509_PUBKEY_DECODE ; 
 int /*<<< orphan*/  X509_R_METHOD_NOT_SUPPORTED ; 
 int /*<<< orphan*/  X509_R_PUBLIC_KEY_DECODE_ERROR ; 
 int /*<<< orphan*/  X509_R_UNSUPPORTED_ALGORITHM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY **ppkey, X509_PUBKEY *key)
{
    EVP_PKEY *pkey = FUNC1();

    if (pkey == NULL) {
        FUNC4(X509_F_X509_PUBKEY_DECODE, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    if (!FUNC2(pkey, FUNC3(key->algor->algorithm))) {
        FUNC4(X509_F_X509_PUBKEY_DECODE, X509_R_UNSUPPORTED_ALGORITHM);
        goto error;
    }

    if (pkey->ameth->pub_decode) {
        /*
         * Treat any failure of pub_decode as a decode error. In
         * future we could have different return codes for decode
         * errors and fatal errors such as malloc failure.
         */
        if (!pkey->ameth->pub_decode(pkey, key)) {
            FUNC4(X509_F_X509_PUBKEY_DECODE, X509_R_PUBLIC_KEY_DECODE_ERROR);
            goto error;
        }
    } else {
        FUNC4(X509_F_X509_PUBKEY_DECODE, X509_R_METHOD_NOT_SUPPORTED);
        goto error;
    }

    *ppkey = pkey;
    return 1;

 error:
    FUNC0(pkey);
    return 0;
}