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
struct TYPE_2__ {unsigned char* data; int length; } ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_1__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECKEY_TYPE2PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  OPENSSL_EC_NAMED_CURVE ; 
 int V_ASN1_OBJECT ; 
 int V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

__attribute__((used)) static EC_KEY *FUNC9(int ptype, const void *pval)
{
    EC_KEY *eckey = NULL;
    EC_GROUP *group = NULL;

    if (ptype == V_ASN1_SEQUENCE) {
        const ASN1_STRING *pstr = pval;
        const unsigned char *pm = pstr->data;
        int pmlen = pstr->length;

        if ((eckey = FUNC8(NULL, &pm, pmlen)) == NULL) {
            FUNC6(EC_F_ECKEY_TYPE2PARAM, EC_R_DECODE_ERROR);
            goto ecerr;
        }
    } else if (ptype == V_ASN1_OBJECT) {
        const ASN1_OBJECT *poid = pval;

        /*
         * type == V_ASN1_OBJECT => the parameters are given by an asn1 OID
         */
        if ((eckey = FUNC4()) == NULL) {
            FUNC6(EC_F_ECKEY_TYPE2PARAM, ERR_R_MALLOC_FAILURE);
            goto ecerr;
        }
        group = FUNC1(FUNC7(poid));
        if (group == NULL)
            goto ecerr;
        FUNC2(group, OPENSSL_EC_NAMED_CURVE);
        if (FUNC5(eckey, group) == 0)
            goto ecerr;
        FUNC0(group);
    } else {
        FUNC6(EC_F_ECKEY_TYPE2PARAM, EC_R_DECODE_ERROR);
        goto ecerr;
    }

    return eckey;

 ecerr:
    FUNC3(eckey);
    FUNC0(group);
    return NULL;
}