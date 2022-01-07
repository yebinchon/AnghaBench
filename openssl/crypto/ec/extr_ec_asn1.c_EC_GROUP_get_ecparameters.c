
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int point_conversion_form_t ;
struct TYPE_6__ {long version; int * cofactor; int * order; int * base; int curve; int fieldID; } ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef TYPE_1__ ECPARAMETERS ;
typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int * ASN1_OCTET_STRING_new () ;
 int ASN1_STRING_set0 (int *,unsigned char*,size_t) ;
 void* BN_to_ASN1_INTEGER (int const*,int *) ;
 int ECPARAMETERS_free (TYPE_1__*) ;
 TYPE_1__* ECPARAMETERS_new () ;
 int EC_F_EC_GROUP_GET_ECPARAMETERS ;
 int * EC_GROUP_get0_cofactor (int const*) ;
 int * EC_GROUP_get0_generator (int const*) ;
 int * EC_GROUP_get0_order (int const*) ;
 int EC_GROUP_get_point_conversion_form (int const*) ;
 size_t EC_POINT_point2buf (int const*,int const*,int ,unsigned char**,int *) ;
 int EC_R_UNDEFINED_GENERATOR ;
 int ECerr (int ,int ) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 int ec_asn1_group2curve (int const*,int ) ;
 int ec_asn1_group2fieldid (int const*,int ) ;

ECPARAMETERS *EC_GROUP_get_ecparameters(const EC_GROUP *group,
                                               ECPARAMETERS *params)
{
    size_t len = 0;
    ECPARAMETERS *ret = ((void*)0);
    const BIGNUM *tmp;
    unsigned char *buffer = ((void*)0);
    const EC_POINT *point = ((void*)0);
    point_conversion_form_t form;
    ASN1_INTEGER *orig;

    if (params == ((void*)0)) {
        if ((ret = ECPARAMETERS_new()) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    } else
        ret = params;


    ret->version = (long)0x1;


    if (!ec_asn1_group2fieldid(group, ret->fieldID)) {
        ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }


    if (!ec_asn1_group2curve(group, ret->curve)) {
        ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }


    if ((point = EC_GROUP_get0_generator(group)) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, EC_R_UNDEFINED_GENERATOR);
        goto err;
    }

    form = EC_GROUP_get_point_conversion_form(group);

    len = EC_POINT_point2buf(group, point, form, &buffer, ((void*)0));
    if (len == 0) {
        ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }
    if (ret->base == ((void*)0) && (ret->base = ASN1_OCTET_STRING_new()) == ((void*)0)) {
        OPENSSL_free(buffer);
        ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    ASN1_STRING_set0(ret->base, buffer, len);


    tmp = EC_GROUP_get0_order(group);
    if (tmp == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }
    ret->order = BN_to_ASN1_INTEGER(tmp, orig = ret->order);
    if (ret->order == ((void*)0)) {
        ret->order = orig;
        ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_ASN1_LIB);
        goto err;
    }


    tmp = EC_GROUP_get0_cofactor(group);
    if (tmp != ((void*)0)) {
        ret->cofactor = BN_to_ASN1_INTEGER(tmp, orig = ret->cofactor);
        if (ret->cofactor == ((void*)0)) {
            ret->cofactor = orig;
            ECerr(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_ASN1_LIB);
            goto err;
        }
    }

    return ret;

 err:
    if (params == ((void*)0))
        ECPARAMETERS_free(ret);
    return ((void*)0);
}
