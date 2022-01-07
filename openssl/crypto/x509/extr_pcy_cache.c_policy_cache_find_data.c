
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * valid_policy; } ;
typedef TYPE_1__ X509_POLICY_DATA ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ X509_POLICY_CACHE ;
typedef int ASN1_OBJECT ;


 int sk_X509_POLICY_DATA_find (int ,TYPE_1__*) ;
 TYPE_1__* sk_X509_POLICY_DATA_value (int ,int) ;

X509_POLICY_DATA *policy_cache_find_data(const X509_POLICY_CACHE *cache,
                                         const ASN1_OBJECT *id)
{
    int idx;
    X509_POLICY_DATA tmp;
    tmp.valid_policy = (ASN1_OBJECT *)id;
    idx = sk_X509_POLICY_DATA_find(cache->data, &tmp);
    return sk_X509_POLICY_DATA_value(cache->data, idx);
}
