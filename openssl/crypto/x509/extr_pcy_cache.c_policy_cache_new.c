
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int any_skip; int explicit_skip; int map_skip; int * data; int * anyPolicy; } ;
typedef TYPE_1__ X509_POLICY_CACHE ;
struct TYPE_11__ {int ex_flags; TYPE_1__* policy_cache; } ;
typedef TYPE_2__ X509 ;
struct TYPE_12__ {int * inhibitPolicyMapping; int * requireExplicitPolicy; } ;
typedef int POLICY_MAPPINGS ;
typedef TYPE_3__ POLICY_CONSTRAINTS ;
typedef int CERTIFICATEPOLICIES ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int EXFLAG_INVALID_POLICY ;
 int NID_certificate_policies ;
 int NID_inhibit_any_policy ;
 int NID_policy_constraints ;
 int NID_policy_mappings ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int POLICY_CONSTRAINTS_free (TYPE_3__*) ;
 int X509V3_F_POLICY_CACHE_NEW ;
 int X509V3err (int ,int ) ;
 void* X509_get_ext_d2i (TYPE_2__*,int ,int*,int *) ;
 int policy_cache_create (TYPE_2__*,int *,int) ;
 int policy_cache_set_int (int*,int *) ;
 int policy_cache_set_mapping (TYPE_2__*,int *) ;

__attribute__((used)) static int policy_cache_new(X509 *x)
{
    X509_POLICY_CACHE *cache;
    ASN1_INTEGER *ext_any = ((void*)0);
    POLICY_CONSTRAINTS *ext_pcons = ((void*)0);
    CERTIFICATEPOLICIES *ext_cpols = ((void*)0);
    POLICY_MAPPINGS *ext_pmaps = ((void*)0);
    int i;

    if (x->policy_cache != ((void*)0))
        return 1;
    cache = OPENSSL_malloc(sizeof(*cache));
    if (cache == ((void*)0)) {
        X509V3err(X509V3_F_POLICY_CACHE_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    cache->anyPolicy = ((void*)0);
    cache->data = ((void*)0);
    cache->any_skip = -1;
    cache->explicit_skip = -1;
    cache->map_skip = -1;

    x->policy_cache = cache;





    ext_pcons = X509_get_ext_d2i(x, NID_policy_constraints, &i, ((void*)0));

    if (!ext_pcons) {
        if (i != -1)
            goto bad_cache;
    } else {
        if (!ext_pcons->requireExplicitPolicy
            && !ext_pcons->inhibitPolicyMapping)
            goto bad_cache;
        if (!policy_cache_set_int(&cache->explicit_skip,
                                  ext_pcons->requireExplicitPolicy))
            goto bad_cache;
        if (!policy_cache_set_int(&cache->map_skip,
                                  ext_pcons->inhibitPolicyMapping))
            goto bad_cache;
    }



    ext_cpols = X509_get_ext_d2i(x, NID_certificate_policies, &i, ((void*)0));




    if (!ext_cpols) {

        if (i != -1)
            goto bad_cache;
        return 1;
    }

    i = policy_cache_create(x, ext_cpols, i);



    if (i <= 0)
        return i;

    ext_pmaps = X509_get_ext_d2i(x, NID_policy_mappings, &i, ((void*)0));

    if (!ext_pmaps) {

        if (i != -1)
            goto bad_cache;
    } else {
        i = policy_cache_set_mapping(x, ext_pmaps);
        if (i <= 0)
            goto bad_cache;
    }

    ext_any = X509_get_ext_d2i(x, NID_inhibit_any_policy, &i, ((void*)0));

    if (!ext_any) {
        if (i != -1)
            goto bad_cache;
    } else if (!policy_cache_set_int(&cache->any_skip, ext_any))
        goto bad_cache;
    goto just_cleanup;

 bad_cache:
    x->ex_flags |= EXFLAG_INVALID_POLICY;

 just_cleanup:
    POLICY_CONSTRAINTS_free(ext_pcons);
    ASN1_INTEGER_free(ext_any);
    return 1;

}
