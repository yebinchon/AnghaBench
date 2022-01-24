#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* ameth; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_pub_key ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_EVP_PKEY_NEW_RAW_PUBLIC_KEY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  EVP_R_KEY_SETUP_FAILED ; 
 int /*<<< orphan*/  EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned char const*,size_t) ; 

EVP_PKEY *FUNC5(int type, ENGINE *e,
                                      const unsigned char *pub,
                                      size_t len)
{
    EVP_PKEY *ret = FUNC1();

    if (ret == NULL
            || !FUNC3(ret, e, type, NULL, -1)) {
        /* EVPerr already called */
        goto err;
    }

    if (ret->ameth->set_pub_key == NULL) {
        FUNC2(EVP_F_EVP_PKEY_NEW_RAW_PUBLIC_KEY,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        goto err;
    }

    if (!ret->ameth->set_pub_key(ret, pub, len)) {
        FUNC2(EVP_F_EVP_PKEY_NEW_RAW_PUBLIC_KEY, EVP_R_KEY_SETUP_FAILED);
        goto err;
    }

    return ret;

 err:
    FUNC0(ret);
    return NULL;
}