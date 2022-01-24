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
typedef  int /*<<< orphan*/  X509_PUBKEY ;
struct TYPE_6__ {int /*<<< orphan*/  rsa; } ;
struct TYPE_8__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static int FUNC5(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    unsigned char *penc = NULL;
    int penclen;
    ASN1_STRING *str;
    int strtype;

    if (!FUNC4(pkey, &str, &strtype))
        return 0;
    penclen = FUNC3(pkey->pkey.rsa, &penc);
    if (penclen <= 0)
        return 0;
    if (FUNC2(pk, FUNC0(pkey->ameth->pkey_id),
                               strtype, str, penc, penclen))
        return 1;

    FUNC1(penc);
    return 0;
}