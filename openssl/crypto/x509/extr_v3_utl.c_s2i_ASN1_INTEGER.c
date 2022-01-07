
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
struct TYPE_4__ {int type; } ;
typedef int BIGNUM ;
typedef TYPE_1__ ASN1_INTEGER ;


 int BN_dec2bn (int **,char const*) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,char const*) ;
 scalar_t__ BN_is_zero (int *) ;
 int * BN_new () ;
 TYPE_1__* BN_to_ASN1_INTEGER (int *,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int V_ASN1_NEG ;
 int X509V3_F_S2I_ASN1_INTEGER ;
 int X509V3_R_BN_DEC2BN_ERROR ;
 int X509V3_R_BN_TO_ASN1_INTEGER_ERROR ;
 int X509V3_R_INVALID_NULL_VALUE ;
 int X509V3err (int ,int ) ;

ASN1_INTEGER *s2i_ASN1_INTEGER(X509V3_EXT_METHOD *method, const char *value)
{
    BIGNUM *bn = ((void*)0);
    ASN1_INTEGER *aint;
    int isneg, ishex;
    int ret;
    if (value == ((void*)0)) {
        X509V3err(X509V3_F_S2I_ASN1_INTEGER, X509V3_R_INVALID_NULL_VALUE);
        return ((void*)0);
    }
    bn = BN_new();
    if (bn == ((void*)0)) {
        X509V3err(X509V3_F_S2I_ASN1_INTEGER, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    if (value[0] == '-') {
        value++;
        isneg = 1;
    } else
        isneg = 0;

    if (value[0] == '0' && ((value[1] == 'x') || (value[1] == 'X'))) {
        value += 2;
        ishex = 1;
    } else
        ishex = 0;

    if (ishex)
        ret = BN_hex2bn(&bn, value);
    else
        ret = BN_dec2bn(&bn, value);

    if (!ret || value[ret]) {
        BN_free(bn);
        X509V3err(X509V3_F_S2I_ASN1_INTEGER, X509V3_R_BN_DEC2BN_ERROR);
        return ((void*)0);
    }

    if (isneg && BN_is_zero(bn))
        isneg = 0;

    aint = BN_to_ASN1_INTEGER(bn, ((void*)0));
    BN_free(bn);
    if (!aint) {
        X509V3err(X509V3_F_S2I_ASN1_INTEGER,
                  X509V3_R_BN_TO_ASN1_INTEGER_ERROR);
        return ((void*)0);
    }
    if (isneg)
        aint->type |= V_ASN1_NEG;
    return aint;
}
