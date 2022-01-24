#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rsa; } ;
struct TYPE_8__ {TYPE_1__* ameth; TYPE_2__ pkey; } ;
struct TYPE_6__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  RSA_F_RSA_PRIV_ENCODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static int FUNC6(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    unsigned char *rk = NULL;
    int rklen;
    ASN1_STRING *str;
    int strtype;

    if (!FUNC5(pkey, &str, &strtype))
        return 0;
    rklen = FUNC4(pkey->pkey.rsa, &rk);

    if (rklen <= 0) {
        FUNC3(RSA_F_RSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        FUNC0(str);
        return 0;
    }

    if (!FUNC2(p8, FUNC1(pkey->ameth->pkey_id), 0,
                         strtype, str, rk, rklen)) {
        FUNC3(RSA_F_RSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        FUNC0(str);
        return 0;
    }

    return 1;
}