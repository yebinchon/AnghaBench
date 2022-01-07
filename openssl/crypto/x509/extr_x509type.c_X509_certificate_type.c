
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int EVP_PKEY ;
 int EVP_PKEY_id (int const*) ;
 int EVP_PKS_DSA ;
 int EVP_PKS_EC ;
 int EVP_PKS_RSA ;
 int EVP_PKT_ENC ;
 int EVP_PKT_EXCH ;
 int EVP_PKT_SIGN ;
 int EVP_PK_DH ;
 int EVP_PK_DSA ;
 int EVP_PK_EC ;
 int EVP_PK_RSA ;
 scalar_t__ OBJ_find_sigid_algs (int,int *,int*) ;
 int * X509_get0_pubkey (int const*) ;
 int X509_get_signature_nid (int const*) ;

int X509_certificate_type(const X509 *x, const EVP_PKEY *pkey)
{
    const EVP_PKEY *pk;
    int ret = 0, i;

    if (x == ((void*)0))
        return 0;

    if (pkey == ((void*)0))
        pk = X509_get0_pubkey(x);
    else
        pk = pkey;

    if (pk == ((void*)0))
        return 0;

    switch (EVP_PKEY_id(pk)) {
    case 137:
        ret = EVP_PK_RSA | EVP_PKT_SIGN;

        ret |= EVP_PKT_ENC;
        break;
    case 136:
        ret = EVP_PK_RSA | EVP_PKT_SIGN;
        break;
    case 141:
        ret = EVP_PK_DSA | EVP_PKT_SIGN;
        break;
    case 140:
        ret = EVP_PK_EC | EVP_PKT_SIGN | EVP_PKT_EXCH;
        break;
    case 138:
    case 139:
        ret = EVP_PKT_SIGN;
        break;
    case 142:
        ret = EVP_PK_DH | EVP_PKT_EXCH;
        break;
    case 132:
    case 131:
    case 130:
        ret = EVP_PKT_EXCH | EVP_PKT_SIGN;
        break;
    default:
        break;
    }

    i = X509_get_signature_nid(x);
    if (i && OBJ_find_sigid_algs(i, ((void*)0), &i)) {

        switch (i) {
        case 128:
        case 129:
            ret |= EVP_PKS_RSA;
            break;
        case 134:
        case 133:
            ret |= EVP_PKS_DSA;
            break;
        case 135:
            ret |= EVP_PKS_EC;
            break;
        default:
            break;
        }
    }

    return ret;
}
