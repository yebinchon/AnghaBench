
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * qualifier_set; int * valid_policy; int flags; int * expected_policy_set; } ;
typedef TYPE_1__ X509_POLICY_DATA ;
struct TYPE_8__ {int * qualifiers; int * policyid; } ;
typedef TYPE_2__ POLICYINFO ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OBJ_dup (int const*) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int POLICY_DATA_FLAG_CRITICAL ;
 int X509V3_F_POLICY_DATA_NEW ;
 int X509V3err (int ,int ) ;
 int * sk_ASN1_OBJECT_new_null () ;

X509_POLICY_DATA *policy_data_new(POLICYINFO *policy,
                                  const ASN1_OBJECT *cid, int crit)
{
    X509_POLICY_DATA *ret;
    ASN1_OBJECT *id;

    if (policy == ((void*)0) && cid == ((void*)0))
        return ((void*)0);
    if (cid) {
        id = OBJ_dup(cid);
        if (id == ((void*)0))
            return ((void*)0);
    } else
        id = ((void*)0);
    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        X509V3err(X509V3_F_POLICY_DATA_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->expected_policy_set = sk_ASN1_OBJECT_new_null();
    if (ret->expected_policy_set == ((void*)0)) {
        OPENSSL_free(ret);
        ASN1_OBJECT_free(id);
        X509V3err(X509V3_F_POLICY_DATA_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (crit)
        ret->flags = POLICY_DATA_FLAG_CRITICAL;

    if (id)
        ret->valid_policy = id;
    else {
        ret->valid_policy = policy->policyid;
        policy->policyid = ((void*)0);
    }

    if (policy) {
        ret->qualifier_set = policy->qualifiers;
        policy->qualifiers = ((void*)0);
    }

    return ret;
}
