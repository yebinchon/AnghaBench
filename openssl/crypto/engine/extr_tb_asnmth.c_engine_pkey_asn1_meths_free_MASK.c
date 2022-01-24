#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* pkey_asn1_meths ) (TYPE_1__*,int /*<<< orphan*/ **,int const**,int const) ;} ;
typedef  int /*<<< orphan*/  EVP_PKEY_ASN1_METHOD ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ **,int const**,int const) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,int const**,int const) ; 

void FUNC3(ENGINE *e)
{
    int i;
    EVP_PKEY_ASN1_METHOD *pkm;
    if (e->pkey_asn1_meths) {
        const int *pknids;
        int npknids;
        npknids = e->pkey_asn1_meths(e, NULL, &pknids, 0);
        for (i = 0; i < npknids; i++) {
            if (e->pkey_asn1_meths(e, &pkm, NULL, pknids[i])) {
                FUNC0(pkm);
            }
        }
    }
}