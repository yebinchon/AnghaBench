
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_3__ {int * pss; } ;
typedef TYPE_1__ RSA ;
typedef int ASN1_OBJECT ;


 scalar_t__ EVP_PKEY_RSA_PSS ;
 scalar_t__ OBJ_obj2nid (int const*) ;
 int RSA_F_RSA_PARAM_DECODE ;
 int RSA_R_INVALID_PSS_PARAMETERS ;
 int RSAerr (int ,int ) ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_get0 (int const**,int*,void const**,int const*) ;
 int * rsa_pss_decode (int const*) ;

__attribute__((used)) static int rsa_param_decode(RSA *rsa, const X509_ALGOR *alg)
{
    const ASN1_OBJECT *algoid;
    const void *algp;
    int algptype;

    X509_ALGOR_get0(&algoid, &algptype, &algp, alg);
    if (OBJ_obj2nid(algoid) != EVP_PKEY_RSA_PSS)
        return 1;
    if (algptype == V_ASN1_UNDEF)
        return 1;
    if (algptype != V_ASN1_SEQUENCE) {
        RSAerr(RSA_F_RSA_PARAM_DECODE, RSA_R_INVALID_PSS_PARAMETERS);
        return 0;
    }
    rsa->pss = rsa_pss_decode(alg);
    if (rsa->pss == ((void*)0))
        return 0;
    return 1;
}
