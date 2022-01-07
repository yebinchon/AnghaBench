
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int nid; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;


 int NID_undef ;
 TYPE_1__* tls1_group_id_lookup (int ) ;

int tls1_group_id2nid(uint16_t group_id)
{
    const TLS_GROUP_INFO *ginf = tls1_group_id_lookup(group_id);

    return ginf == ((void*)0) ? NID_undef : ginf->nid;
}
