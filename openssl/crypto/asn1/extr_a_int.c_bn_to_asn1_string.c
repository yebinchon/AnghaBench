
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; int length; scalar_t__* data; } ;
typedef int BIGNUM ;
typedef TYPE_1__ ASN1_STRING ;
typedef TYPE_1__ ASN1_INTEGER ;


 int ASN1_F_BN_TO_ASN1_STRING ;
 int ASN1_INTEGER_free (TYPE_1__*) ;
 scalar_t__ ASN1_STRING_set (TYPE_1__*,int *,int) ;
 TYPE_1__* ASN1_STRING_type_new (int) ;
 int ASN1err (int ,int ) ;
 int BN_bn2bin (int const*,scalar_t__*) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_num_bytes (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_NESTED_ASN1_ERROR ;
 int V_ASN1_NEG_INTEGER ;

__attribute__((used)) static ASN1_STRING *bn_to_asn1_string(const BIGNUM *bn, ASN1_STRING *ai,
                                      int atype)
{
    ASN1_INTEGER *ret;
    int len;

    if (ai == ((void*)0)) {
        ret = ASN1_STRING_type_new(atype);
    } else {
        ret = ai;
        ret->type = atype;
    }

    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_BN_TO_ASN1_STRING, ERR_R_NESTED_ASN1_ERROR);
        goto err;
    }

    if (BN_is_negative(bn) && !BN_is_zero(bn))
        ret->type |= V_ASN1_NEG_INTEGER;

    len = BN_num_bytes(bn);

    if (len == 0)
        len = 1;

    if (ASN1_STRING_set(ret, ((void*)0), len) == 0) {
        ASN1err(ASN1_F_BN_TO_ASN1_STRING, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (BN_is_zero(bn))
        ret->data[0] = 0;
    else
        len = BN_bn2bin(bn, ret->data);
    ret->length = len;
    return ret;
 err:
    if (ret != ai)
        ASN1_INTEGER_free(ret);
    return ((void*)0);
}
