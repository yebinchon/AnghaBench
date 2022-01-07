
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int data; } ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_STRING_new () ;
 int EC_F_ECKEY_PARAM2TYPE ;
 scalar_t__ EC_GROUP_get_asn1_flag (int const*) ;
 int EC_GROUP_get_curve_name (int const*) ;
 int * EC_KEY_get0_group (int *) ;
 int EC_R_MISSING_PARAMETERS ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 void* OBJ_nid2obj (int) ;
 int V_ASN1_OBJECT ;
 int V_ASN1_SEQUENCE ;
 scalar_t__ i2d_ECParameters (int *,int *) ;

__attribute__((used)) static int eckey_param2type(int *pptype, void **ppval, EC_KEY *ec_key)
{
    const EC_GROUP *group;
    int nid;
    if (ec_key == ((void*)0) || (group = EC_KEY_get0_group(ec_key)) == ((void*)0)) {
        ECerr(EC_F_ECKEY_PARAM2TYPE, EC_R_MISSING_PARAMETERS);
        return 0;
    }
    if (EC_GROUP_get_asn1_flag(group)
        && (nid = EC_GROUP_get_curve_name(group)))

    {
        *ppval = OBJ_nid2obj(nid);
        *pptype = V_ASN1_OBJECT;
    } else {

        ASN1_STRING *pstr = ((void*)0);
        pstr = ASN1_STRING_new();
        if (pstr == ((void*)0))
            return 0;
        pstr->length = i2d_ECParameters(ec_key, &pstr->data);
        if (pstr->length <= 0) {
            ASN1_STRING_free(pstr);
            ECerr(EC_F_ECKEY_PARAM2TYPE, ERR_R_EC_LIB);
            return 0;
        }
        *ppval = pstr;
        *pptype = V_ASN1_SEQUENCE;
    }
    return 1;
}
