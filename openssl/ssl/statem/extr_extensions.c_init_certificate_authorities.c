
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * peer_ca_names; } ;
struct TYPE_6__ {TYPE_1__ tmp; } ;
struct TYPE_7__ {TYPE_2__ s3; } ;
typedef TYPE_3__ SSL ;


 int X509_NAME_free ;
 int sk_X509_NAME_pop_free (int *,int ) ;

__attribute__((used)) static int init_certificate_authorities(SSL *s, unsigned int context)
{
    sk_X509_NAME_pop_free(s->s3.tmp.peer_ca_names, X509_NAME_free);
    s->s3.tmp.peer_ca_names = ((void*)0);
    return 1;
}
