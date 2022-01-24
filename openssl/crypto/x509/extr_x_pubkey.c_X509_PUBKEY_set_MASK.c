#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* pkey; } ;
typedef  TYPE_2__ X509_PUBKEY ;
struct TYPE_13__ {TYPE_1__* ameth; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* pub_encode ) (TYPE_2__*,TYPE_3__*) ;} ;
typedef  TYPE_3__ EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  X509_F_X509_PUBKEY_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  X509_R_METHOD_NOT_SUPPORTED ; 
 int /*<<< orphan*/  X509_R_PUBLIC_KEY_ENCODE_ERROR ; 
 int /*<<< orphan*/  X509_R_UNSUPPORTED_ALGORITHM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 

int FUNC5(X509_PUBKEY **x, EVP_PKEY *pkey)
{
    X509_PUBKEY *pk = NULL;

    if (x == NULL)
        return 0;

    if ((pk = FUNC2()) == NULL)
        goto error;

    if (pkey != NULL && pkey->ameth) {
        if (pkey->ameth->pub_encode) {
            if (!pkey->ameth->pub_encode(pk, pkey)) {
                FUNC3(X509_F_X509_PUBKEY_SET,
                        X509_R_PUBLIC_KEY_ENCODE_ERROR);
                goto error;
            }
        } else {
            FUNC3(X509_F_X509_PUBKEY_SET, X509_R_METHOD_NOT_SUPPORTED);
            goto error;
        }
    } else {
        FUNC3(X509_F_X509_PUBKEY_SET, X509_R_UNSUPPORTED_ALGORITHM);
        goto error;
    }

    FUNC1(*x);
    *x = pk;
    pk->pkey = pkey;
    return FUNC0(pkey);

 error:
    FUNC1(pk);
    return 0;
}