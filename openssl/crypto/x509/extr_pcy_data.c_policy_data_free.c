
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int expected_policy_set; int qualifier_set; int valid_policy; } ;
typedef TYPE_1__ X509_POLICY_DATA ;


 int ASN1_OBJECT_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int POLICYQUALINFO_free ;
 int POLICY_DATA_FLAG_SHARED_QUALIFIERS ;
 int sk_ASN1_OBJECT_pop_free (int ,int (*) (int )) ;
 int sk_POLICYQUALINFO_pop_free (int ,int ) ;

void policy_data_free(X509_POLICY_DATA *data)
{
    if (data == ((void*)0))
        return;
    ASN1_OBJECT_free(data->valid_policy);

    if (!(data->flags & POLICY_DATA_FLAG_SHARED_QUALIFIERS))
        sk_POLICYQUALINFO_pop_free(data->qualifier_set, POLICYQUALINFO_free);
    sk_ASN1_OBJECT_pop_free(data->expected_policy_set, ASN1_OBJECT_free);
    OPENSSL_free(data);
}
