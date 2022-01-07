
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int expected_policy_set; int flags; int qualifier_set; } ;
typedef TYPE_2__ X509_POLICY_DATA ;
struct TYPE_15__ {int data; TYPE_1__* anyPolicy; } ;
typedef TYPE_3__ X509_POLICY_CACHE ;
struct TYPE_16__ {int ex_flags; TYPE_3__* policy_cache; } ;
typedef TYPE_4__ X509 ;
struct TYPE_17__ {int * subjectDomainPolicy; int * issuerDomainPolicy; } ;
struct TYPE_13__ {int flags; int qualifier_set; } ;
typedef int POLICY_MAPPINGS ;
typedef TYPE_5__ POLICY_MAPPING ;


 int EXFLAG_INVALID_POLICY ;
 scalar_t__ NID_any_policy ;
 scalar_t__ OBJ_obj2nid (int *) ;
 int POLICY_DATA_FLAG_CRITICAL ;
 int POLICY_DATA_FLAG_MAPPED ;
 int POLICY_DATA_FLAG_MAPPED_ANY ;
 int POLICY_DATA_FLAG_SHARED_QUALIFIERS ;
 int POLICY_MAPPING_free ;
 TYPE_2__* policy_cache_find_data (TYPE_3__*,int *) ;
 int policy_data_free (TYPE_2__*) ;
 TYPE_2__* policy_data_new (int *,int *,int) ;
 int sk_ASN1_OBJECT_push (int ,int *) ;
 int sk_POLICY_MAPPING_num (int *) ;
 int sk_POLICY_MAPPING_pop_free (int *,int ) ;
 TYPE_5__* sk_POLICY_MAPPING_value (int *,int) ;
 int sk_X509_POLICY_DATA_push (int ,TYPE_2__*) ;

int policy_cache_set_mapping(X509 *x, POLICY_MAPPINGS *maps)
{
    POLICY_MAPPING *map;
    X509_POLICY_DATA *data;
    X509_POLICY_CACHE *cache = x->policy_cache;
    int i;
    int ret = 0;
    if (sk_POLICY_MAPPING_num(maps) == 0) {
        ret = -1;
        goto bad_mapping;
    }
    for (i = 0; i < sk_POLICY_MAPPING_num(maps); i++) {
        map = sk_POLICY_MAPPING_value(maps, i);

        if ((OBJ_obj2nid(map->subjectDomainPolicy) == NID_any_policy)
            || (OBJ_obj2nid(map->issuerDomainPolicy) == NID_any_policy)) {
            ret = -1;
            goto bad_mapping;
        }


        data = policy_cache_find_data(cache, map->issuerDomainPolicy);

        if (data == ((void*)0) && !cache->anyPolicy)
            continue;


        if (data == ((void*)0)) {
            data = policy_data_new(((void*)0), map->issuerDomainPolicy,
                                   cache->anyPolicy->flags
                                   & POLICY_DATA_FLAG_CRITICAL);
            if (data == ((void*)0))
                goto bad_mapping;
            data->qualifier_set = cache->anyPolicy->qualifier_set;



            data->flags |= POLICY_DATA_FLAG_MAPPED_ANY;
            data->flags |= POLICY_DATA_FLAG_SHARED_QUALIFIERS;
            if (!sk_X509_POLICY_DATA_push(cache->data, data)) {
                policy_data_free(data);
                goto bad_mapping;
            }
        } else
            data->flags |= POLICY_DATA_FLAG_MAPPED;
        if (!sk_ASN1_OBJECT_push(data->expected_policy_set,
                                 map->subjectDomainPolicy))
            goto bad_mapping;
        map->subjectDomainPolicy = ((void*)0);

    }

    ret = 1;
 bad_mapping:
    if (ret == -1)
        x->ex_flags |= EXFLAG_INVALID_POLICY;
    sk_POLICY_MAPPING_pop_free(maps, POLICY_MAPPING_free);
    return ret;

}
