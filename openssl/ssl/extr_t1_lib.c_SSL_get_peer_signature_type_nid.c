
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* peer_sigalg; } ;
struct TYPE_8__ {TYPE_2__ tmp; } ;
struct TYPE_9__ {TYPE_3__ s3; } ;
struct TYPE_6__ {int sig; } ;
typedef TYPE_4__ SSL ;



int SSL_get_peer_signature_type_nid(const SSL *s, int *pnid)
{
    if (s->s3.tmp.peer_sigalg == ((void*)0))
        return 0;
    *pnid = s->s3.tmp.peer_sigalg->sig;
    return 1;
}
