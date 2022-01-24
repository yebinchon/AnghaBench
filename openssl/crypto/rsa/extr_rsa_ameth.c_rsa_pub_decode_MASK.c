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
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_2__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_RSA_LIB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_F_RSA_PUB_DECODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p;
    int pklen;
    X509_ALGOR *alg;
    RSA *rsa = NULL;

    if (!FUNC3(NULL, &p, &pklen, &alg, pubkey))
        return 0;
    if ((rsa = FUNC4(NULL, &p, pklen)) == NULL) {
        FUNC2(RSA_F_RSA_PUB_DECODE, ERR_R_RSA_LIB);
        return 0;
    }
    if (!FUNC5(rsa, alg)) {
        FUNC1(rsa);
        return 0;
    }
    if (!FUNC0(pkey, pkey->ameth->pkey_id, rsa)) {
        FUNC1(rsa);
        return 0;
    }
    return 1;
}