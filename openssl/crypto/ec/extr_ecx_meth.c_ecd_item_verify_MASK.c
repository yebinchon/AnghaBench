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
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECD_ITEM_VERIFY ; 
 int /*<<< orphan*/  EC_R_INVALID_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NID_ED25519 ; 
 int NID_ED448 ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(EVP_MD_CTX *ctx, const ASN1_ITEM *it, void *asn,
                           X509_ALGOR *sigalg, ASN1_BIT_STRING *str,
                           EVP_PKEY *pkey)
{
    const ASN1_OBJECT *obj;
    int ptype;
    int nid;

    /* Sanity check: make sure it is ED25519/ED448 with absent parameters */
    FUNC3(&obj, &ptype, NULL, sigalg);
    nid = FUNC2(obj);
    if ((nid != NID_ED25519 && nid != NID_ED448) || ptype != V_ASN1_UNDEF) {
        FUNC0(EC_F_ECD_ITEM_VERIFY, EC_R_INVALID_ENCODING);
        return 0;
    }

    if (!FUNC1(ctx, NULL, NULL, NULL, pkey))
        return 0;

    return 2;
}