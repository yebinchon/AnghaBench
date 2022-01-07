
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int nid; int group_id; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* nid_list ;

__attribute__((used)) static uint16_t tls1_nid2group_id(int nid)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(nid_list); i++) {
        if (nid_list[i].nid == nid)
            return nid_list[i].group_id;
    }
    return 0;
}
