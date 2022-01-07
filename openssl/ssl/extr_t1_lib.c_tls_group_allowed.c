
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int flags; int nid; int secbits; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;
typedef int SSL ;


 int TLS_GROUP_CURVE_CHAR2 ;
 int TLS_GROUP_FFDHE ;
 int ssl_security (int *,int,int ,int ,void*) ;
 TYPE_1__* tls1_group_id_lookup (int) ;

int tls_group_allowed(SSL *s, uint16_t group, int op)
{
    const TLS_GROUP_INFO *ginfo = tls1_group_id_lookup(group);
    unsigned char gtmp[2];

    if (ginfo == ((void*)0))
        return 0;
    gtmp[0] = group >> 8;
    gtmp[1] = group & 0xff;
    return ssl_security(s, op, ginfo->secbits, ginfo->nid, (void *)gtmp);
}
