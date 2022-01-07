
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parameters; int named_curve; } ;
struct TYPE_5__ {int type; TYPE_1__ value; } ;
typedef int EC_GROUP ;
typedef TYPE_2__ ECPKPARAMETERS ;


 int EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int * EC_GROUP_new_from_ecparameters (int ) ;
 int EC_GROUP_set_asn1_flag (int *,int ) ;
 int EC_R_ASN1_ERROR ;
 int EC_R_EC_GROUP_NEW_BY_NAME_FAILURE ;
 int EC_R_MISSING_PARAMETERS ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int OBJ_obj2nid (int ) ;
 int OPENSSL_EC_EXPLICIT_CURVE ;
 int OPENSSL_EC_NAMED_CURVE ;

EC_GROUP *EC_GROUP_new_from_ecpkparameters(const ECPKPARAMETERS *params)
{
    EC_GROUP *ret = ((void*)0);
    int tmp = 0;

    if (params == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, EC_R_MISSING_PARAMETERS);
        return ((void*)0);
    }

    if (params->type == 0) {
        tmp = OBJ_obj2nid(params->value.named_curve);
        if ((ret = EC_GROUP_new_by_curve_name(tmp)) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS,
                  EC_R_EC_GROUP_NEW_BY_NAME_FAILURE);
            return ((void*)0);
        }
        EC_GROUP_set_asn1_flag(ret, OPENSSL_EC_NAMED_CURVE);
    } else if (params->type == 1) {

        ret = EC_GROUP_new_from_ecparameters(params->value.parameters);
        if (!ret) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, ERR_R_EC_LIB);
            return ((void*)0);
        }
        EC_GROUP_set_asn1_flag(ret, OPENSSL_EC_EXPLICIT_CURVE);
    } else if (params->type == 2) {
        return ((void*)0);
    } else {
        ECerr(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, EC_R_ASN1_ERROR);
        return ((void*)0);
    }

    return ret;
}
