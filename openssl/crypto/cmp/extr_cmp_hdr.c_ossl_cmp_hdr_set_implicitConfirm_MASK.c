#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OSSL_CMP_PKIHEADER ;
typedef  int /*<<< orphan*/  OSSL_CMP_ITAV ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NID_id_it_implicitConfirm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(OSSL_CMP_PKIHEADER *hdr)
{
    OSSL_CMP_ITAV *itav;
    ASN1_TYPE *asn1null;

    if (!FUNC5(hdr != NULL))
        return 0;
    asn1null = (ASN1_TYPE *)FUNC0();
    if (asn1null == NULL)
        return 0;
    if ((itav = FUNC3(FUNC2(NID_id_it_implicitConfirm),
                                     asn1null)) == NULL)
        goto err;
    if (!FUNC6(hdr, itav))
        goto err;
    return 1;

 err:
    FUNC1(asn1null);
    FUNC4(itav);
    return 0;
}