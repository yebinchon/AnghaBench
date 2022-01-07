
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int valid_policy; } ;
typedef TYPE_1__ X509_POLICY_DATA ;
struct TYPE_11__ {int * data; TYPE_1__* anyPolicy; } ;
typedef TYPE_2__ X509_POLICY_CACHE ;
struct TYPE_12__ {int ex_flags; TYPE_2__* policy_cache; } ;
typedef TYPE_3__ X509 ;
typedef int POLICYINFO ;
typedef int CERTIFICATEPOLICIES ;


 int ERR_R_MALLOC_FAILURE ;
 int EXFLAG_INVALID_POLICY ;
 scalar_t__ NID_any_policy ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int POLICYINFO_free ;
 int X509V3_F_POLICY_CACHE_CREATE ;
 int X509V3err (int ,int ) ;
 int policy_data_cmp ;
 int policy_data_free (TYPE_1__*) ;
 TYPE_1__* policy_data_new (int *,int *,int) ;
 int sk_POLICYINFO_num (int *) ;
 int sk_POLICYINFO_pop_free (int *,int ) ;
 int * sk_POLICYINFO_value (int *,int) ;
 scalar_t__ sk_X509_POLICY_DATA_find (int *,TYPE_1__*) ;
 int * sk_X509_POLICY_DATA_new (int ) ;
 int sk_X509_POLICY_DATA_pop_free (int *,int (*) (TYPE_1__*)) ;
 int sk_X509_POLICY_DATA_push (int *,TYPE_1__*) ;

__attribute__((used)) static int policy_cache_create(X509 *x,
                               CERTIFICATEPOLICIES *policies, int crit)
{
    int i, num, ret = 0;
    X509_POLICY_CACHE *cache = x->policy_cache;
    X509_POLICY_DATA *data = ((void*)0);
    POLICYINFO *policy;

    if ((num = sk_POLICYINFO_num(policies)) <= 0)
        goto bad_policy;
    cache->data = sk_X509_POLICY_DATA_new(policy_data_cmp);
    if (cache->data == ((void*)0)) {
        X509V3err(X509V3_F_POLICY_CACHE_CREATE, ERR_R_MALLOC_FAILURE);
        goto just_cleanup;
    }
    for (i = 0; i < num; i++) {
        policy = sk_POLICYINFO_value(policies, i);
        data = policy_data_new(policy, ((void*)0), crit);
        if (data == ((void*)0)) {
            X509V3err(X509V3_F_POLICY_CACHE_CREATE, ERR_R_MALLOC_FAILURE);
            goto just_cleanup;
        }



        if (OBJ_obj2nid(data->valid_policy) == NID_any_policy) {
            if (cache->anyPolicy) {
                ret = -1;
                goto bad_policy;
            }
            cache->anyPolicy = data;
        } else if (sk_X509_POLICY_DATA_find(cache->data, data) >=0 ) {
            ret = -1;
            goto bad_policy;
        } else if (!sk_X509_POLICY_DATA_push(cache->data, data)) {
            X509V3err(X509V3_F_POLICY_CACHE_CREATE, ERR_R_MALLOC_FAILURE);
            goto bad_policy;
        }
        data = ((void*)0);
    }
    ret = 1;

 bad_policy:
    if (ret == -1)
        x->ex_flags |= EXFLAG_INVALID_POLICY;
    policy_data_free(data);
 just_cleanup:
    sk_POLICYINFO_pop_free(policies, POLICYINFO_free);
    if (ret <= 0) {
        sk_X509_POLICY_DATA_pop_free(cache->data, policy_data_free);
        cache->data = ((void*)0);
    }
    return ret;
}
