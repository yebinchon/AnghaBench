
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* data; int length; } ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef TYPE_1__ ASN1_STRING ;
typedef int ASN1_OBJECT ;


 int EC_F_ECKEY_TYPE2PARAM ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int ) ;
 int EC_GROUP_set_asn1_flag (int *,int ) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_new () ;
 scalar_t__ EC_KEY_set_group (int *,int *) ;
 int EC_R_DECODE_ERROR ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OBJ_obj2nid (int const*) ;
 int OPENSSL_EC_NAMED_CURVE ;
 int V_ASN1_OBJECT ;
 int V_ASN1_SEQUENCE ;
 int * d2i_ECParameters (int *,unsigned char const**,int) ;

__attribute__((used)) static EC_KEY *eckey_type2param(int ptype, const void *pval)
{
    EC_KEY *eckey = ((void*)0);
    EC_GROUP *group = ((void*)0);

    if (ptype == V_ASN1_SEQUENCE) {
        const ASN1_STRING *pstr = pval;
        const unsigned char *pm = pstr->data;
        int pmlen = pstr->length;

        if ((eckey = d2i_ECParameters(((void*)0), &pm, pmlen)) == ((void*)0)) {
            ECerr(EC_F_ECKEY_TYPE2PARAM, EC_R_DECODE_ERROR);
            goto ecerr;
        }
    } else if (ptype == V_ASN1_OBJECT) {
        const ASN1_OBJECT *poid = pval;




        if ((eckey = EC_KEY_new()) == ((void*)0)) {
            ECerr(EC_F_ECKEY_TYPE2PARAM, ERR_R_MALLOC_FAILURE);
            goto ecerr;
        }
        group = EC_GROUP_new_by_curve_name(OBJ_obj2nid(poid));
        if (group == ((void*)0))
            goto ecerr;
        EC_GROUP_set_asn1_flag(group, OPENSSL_EC_NAMED_CURVE);
        if (EC_KEY_set_group(eckey, group) == 0)
            goto ecerr;
        EC_GROUP_free(group);
    } else {
        ECerr(EC_F_ECKEY_TYPE2PARAM, EC_R_DECODE_ERROR);
        goto ecerr;
    }

    return eckey;

 ecerr:
    EC_KEY_free(eckey);
    EC_GROUP_free(group);
    return ((void*)0);
}
