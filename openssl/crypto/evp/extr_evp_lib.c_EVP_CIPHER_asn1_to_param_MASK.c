#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int (* get_asn1_parameters ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * prov; } ;
struct TYPE_9__ {TYPE_2__* cipher; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ EVP_CIPHER_CTX ;
typedef  TYPE_2__ EVP_CIPHER ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__ const*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__ const*) ; 
#define  EVP_CIPH_CCM_MODE 132 
 int EVP_CIPH_FLAG_CUSTOM_ASN1 ; 
#define  EVP_CIPH_GCM_MODE 131 
#define  EVP_CIPH_OCB_MODE 130 
#define  EVP_CIPH_WRAP_MODE 129 
#define  EVP_CIPH_XTS_MODE 128 
 int /*<<< orphan*/  EVP_F_EVP_CIPHER_ASN1_TO_PARAM ; 
 int /*<<< orphan*/  EVP_R_CIPHER_PARAMETER_ERROR ; 
 int /*<<< orphan*/  EVP_R_UNSUPPORTED_CIPHER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_ALG_ID ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC10(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    int ret = -1;                /* Assume the worst */
    const EVP_CIPHER *cipher = c->cipher;

    /*
     * For legacy implementations, we detect custom AlgorithmIdentifier
     * parameter handling by checking if there the function pointer
     * cipher->get_asn1_parameters is set.  We know that this pointer
     * is NULL for provided implementations.
     *
     * Otherwise, for any implementation, we check the flag
     * EVP_CIPH_FLAG_CUSTOM_ASN1.  If it isn't set, we apply
     * default AI parameter creation.
     *
     * Otherwise, for provided implementations, we get the AI parameter
     * in DER encoded form from the implementation by requesting the
     * appropriate OSSL_PARAM and converting the result to a ASN1_TYPE.
     *
     * If none of the above applies, this operation is unsupported.
     */
    if (cipher->get_asn1_parameters != NULL) {
        ret = cipher->get_asn1_parameters(c, type);
    } else if ((FUNC1(cipher) & EVP_CIPH_FLAG_CUSTOM_ASN1) == 0) {
        switch (FUNC3(cipher)) {
        case EVP_CIPH_WRAP_MODE:
            ret = 1;
            break;

        case EVP_CIPH_GCM_MODE:
        case EVP_CIPH_CCM_MODE:
        case EVP_CIPH_XTS_MODE:
        case EVP_CIPH_OCB_MODE:
            ret = -2;
            break;

        default:
            ret = FUNC2(c, type);
        }
    } else if (cipher->prov != NULL) {
        OSSL_PARAM params[3], *p = params;
        unsigned char *der = NULL;
        int derl = -1;

        if ((derl = FUNC8(type, &der)) >= 0) {
            *p++ =
                FUNC7(OSSL_CIPHER_PARAM_ALG_ID,
                                                  der, (size_t)derl);
            *p = FUNC6();
            if (FUNC0(c, params))
                ret = 1;
            FUNC5(der);
        }
    } else {
        ret = -2;
    }

    if (ret == -2)
        FUNC4(EVP_F_EVP_CIPHER_ASN1_TO_PARAM, EVP_R_UNSUPPORTED_CIPHER);
    else if (ret <= 0)
        FUNC4(EVP_F_EVP_CIPHER_ASN1_TO_PARAM, EVP_R_CIPHER_PARAMETER_ERROR);
    if (ret < -1)
        ret = -1;
    return ret;
}