
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_POLICY_LEVEL ;
typedef int X509_POLICY_DATA ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ X509_POLICY_CACHE ;


 int sk_X509_POLICY_DATA_num (int ) ;
 int * sk_X509_POLICY_DATA_value (int ,int) ;
 int tree_link_matching_nodes (int *,int *) ;

__attribute__((used)) static int tree_link_nodes(X509_POLICY_LEVEL *curr,
                           const X509_POLICY_CACHE *cache)
{
    int i;

    for (i = 0; i < sk_X509_POLICY_DATA_num(cache->data); i++) {
        X509_POLICY_DATA *data = sk_X509_POLICY_DATA_value(cache->data, i);


        if (!tree_link_matching_nodes(curr, data))
            return 0;
    }
    return 1;
}
