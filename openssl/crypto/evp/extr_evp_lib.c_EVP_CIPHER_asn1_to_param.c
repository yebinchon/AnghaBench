
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* get_asn1_parameters ) (TYPE_1__*,int *) ;int * prov; } ;
struct TYPE_9__ {TYPE_2__* cipher; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_CIPHER_CTX ;
typedef TYPE_2__ EVP_CIPHER ;
typedef int ASN1_TYPE ;


 scalar_t__ EVP_CIPHER_CTX_set_params (TYPE_1__*,int *) ;
 int EVP_CIPHER_flags (TYPE_2__ const*) ;
 int EVP_CIPHER_get_asn1_iv (TYPE_1__*,int *) ;
 int EVP_CIPHER_mode (TYPE_2__ const*) ;

 int EVP_CIPH_FLAG_CUSTOM_ASN1 ;




 int EVP_F_EVP_CIPHER_ASN1_TO_PARAM ;
 int EVP_R_CIPHER_PARAMETER_ERROR ;
 int EVP_R_UNSUPPORTED_CIPHER ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (unsigned char*) ;
 int OSSL_CIPHER_PARAM_ALG_ID ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,unsigned char*,size_t) ;
 int i2d_ASN1_TYPE (int *,unsigned char**) ;
 int stub1 (TYPE_1__*,int *) ;

int EVP_CIPHER_asn1_to_param(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    int ret = -1;
    const EVP_CIPHER *cipher = c->cipher;
    if (cipher->get_asn1_parameters != ((void*)0)) {
        ret = cipher->get_asn1_parameters(c, type);
    } else if ((EVP_CIPHER_flags(cipher) & EVP_CIPH_FLAG_CUSTOM_ASN1) == 0) {
        switch (EVP_CIPHER_mode(cipher)) {
        case 129:
            ret = 1;
            break;

        case 131:
        case 132:
        case 128:
        case 130:
            ret = -2;
            break;

        default:
            ret = EVP_CIPHER_get_asn1_iv(c, type);
        }
    } else if (cipher->prov != ((void*)0)) {
        OSSL_PARAM params[3], *p = params;
        unsigned char *der = ((void*)0);
        int derl = -1;

        if ((derl = i2d_ASN1_TYPE(type, &der)) >= 0) {
            *p++ =
                OSSL_PARAM_construct_octet_string(OSSL_CIPHER_PARAM_ALG_ID,
                                                  der, (size_t)derl);
            *p = OSSL_PARAM_construct_end();
            if (EVP_CIPHER_CTX_set_params(c, params))
                ret = 1;
            OPENSSL_free(der);
        }
    } else {
        ret = -2;
    }

    if (ret == -2)
        EVPerr(EVP_F_EVP_CIPHER_ASN1_TO_PARAM, EVP_R_UNSUPPORTED_CIPHER);
    else if (ret <= 0)
        EVPerr(EVP_F_EVP_CIPHER_ASN1_TO_PARAM, EVP_R_CIPHER_PARAMETER_ERROR);
    if (ret < -1)
        ret = -1;
    return ret;
}
