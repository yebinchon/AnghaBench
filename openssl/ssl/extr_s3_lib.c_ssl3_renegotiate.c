
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int renegotiate; } ;
struct TYPE_5__ {TYPE_1__ s3; int * handshake_func; } ;
typedef TYPE_2__ SSL ;



int ssl3_renegotiate(SSL *s)
{
    if (s->handshake_func == ((void*)0))
        return 1;

    s->s3.renegotiate = 1;
    return 1;
}
