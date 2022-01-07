
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;
typedef int SSL ;


 int TLS1_3_VERSION ;
 int TLS_GROUP_ONLY_FOR_TLS1_3 ;
 TYPE_1__* tls1_group_id_lookup (int ) ;

int tls_valid_group(SSL *s, uint16_t group_id, int version)
{
    const TLS_GROUP_INFO *ginfo = tls1_group_id_lookup(group_id);

    if (version < TLS1_3_VERSION) {
        if ((ginfo->flags & TLS_GROUP_ONLY_FOR_TLS1_3) != 0)
            return 0;
    }
    return 1;
}
