
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ resp_len; int * resp; } ;
struct TYPE_6__ {TYPE_1__ ocsp; int status_type; } ;
struct TYPE_7__ {TYPE_2__ ext; scalar_t__ server; } ;
typedef TYPE_3__ SSL ;


 int OPENSSL_free (int *) ;
 int TLSEXT_STATUSTYPE_nothing ;

__attribute__((used)) static int init_status_request(SSL *s, unsigned int context)
{
    if (s->server) {
        s->ext.status_type = TLSEXT_STATUSTYPE_nothing;
    } else {




        OPENSSL_free(s->ext.ocsp.resp);
        s->ext.ocsp.resp = ((void*)0);
        s->ext.ocsp.resp_len = 0;
    }

    return 1;
}
