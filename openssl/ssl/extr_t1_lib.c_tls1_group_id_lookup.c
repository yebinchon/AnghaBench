
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ group_id; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;


 size_t OSSL_NELEM (TYPE_1__ const*) ;
 TYPE_1__ const* nid_list ;

const TLS_GROUP_INFO *tls1_group_id_lookup(uint16_t group_id)
{

    size_t i;


    for (i = 0; i < OSSL_NELEM(nid_list); i++) {
        if (nid_list[i].group_id == group_id)
            return &nid_list[i];
    }

    return ((void*)0);
}
