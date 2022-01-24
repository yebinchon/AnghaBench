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
typedef  int /*<<< orphan*/  ctr ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC4 (unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  V_ASN1_OBJECT ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (unsigned char**,long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(int nid, size_t keylen,
                                 const unsigned char *ukm, size_t ukmlen,
                                 unsigned char **der, size_t *der_len,
                                 unsigned char **out_ctr)
{
    unsigned char *p, *encoded = NULL;
    int ret = 0, encoded_len;
    long tlen;
    /* "magic" value to check offset is sane */
    static unsigned char ctr[4] = { 0x00, 0x00, 0x00, 0x01 };
    X509_ALGOR *ksi = NULL;
    ASN1_OBJECT *alg_oid = NULL;
    ASN1_OCTET_STRING *ctr_oct = NULL, *ukm_oct = NULL;

    /* set the KeySpecificInfo - which contains an algorithm oid and counter */
    ksi = FUNC10();
    alg_oid = FUNC6(FUNC7(nid));
    ctr_oct = FUNC2();
    if (ksi == NULL
        || alg_oid == NULL
        || ctr_oct == NULL
        || !FUNC3(ctr_oct, ctr, sizeof(ctr))
        || !FUNC11(ksi, alg_oid, V_ASN1_OCTET_STRING, ctr_oct))
        goto err;
    /* NULL these as they now belong to ksi */
    alg_oid = NULL;
    ctr_oct = NULL;

    /* Set the optional partyAInfo */
    if (ukm != NULL) {
        ukm_oct = FUNC2();
        if (ukm_oct == NULL)
            goto err;
        FUNC3(ukm_oct, (unsigned char *)ukm, ukmlen);
    }
    /* Generate the OtherInfo DER data */
    encoded_len = FUNC4(&encoded, ksi, ukm_oct, keylen);
    if (encoded_len <= 0)
        goto err;

    /* Parse the encoded data to find the offset of the counter data */
    p = encoded;
    tlen = (long)encoded_len;
    if (FUNC12(&p, &tlen, V_ASN1_SEQUENCE)
        && FUNC12(&p, &tlen, V_ASN1_SEQUENCE)
        && FUNC12(&p, &tlen, V_ASN1_OBJECT)
        && FUNC12(&p, &tlen, V_ASN1_OCTET_STRING)
        && FUNC5(p, ctr, 4) == 0) {
        *out_ctr = p;
        *der = encoded;
        *der_len = (size_t)encoded_len;
        ret = 1;
    }
err:
    if (ret != 1)
        FUNC8(encoded);
    FUNC1(ctr_oct);
    FUNC1(ukm_oct);
    FUNC0(alg_oid);
    FUNC9(ksi);
    return ret;
}