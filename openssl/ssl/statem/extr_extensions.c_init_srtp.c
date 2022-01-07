
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * srtp_profile; scalar_t__ server; } ;
typedef TYPE_1__ SSL ;



__attribute__((used)) static int init_srtp(SSL *s, unsigned int context)
{
    if (s->server)
        s->srtp_profile = ((void*)0);

    return 1;
}
