
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ version; int * (* cmeth ) () ;} ;
typedef TYPE_2__ version_info ;
struct TYPE_12__ {scalar_t__ version; int server; TYPE_1__* method; } ;
struct TYPE_10__ {int version; } ;
typedef int SSL_METHOD ;
typedef TYPE_3__ SSL ;



 int TLS1_3_VERSION ;

 TYPE_2__* dtls_version_table ;
 scalar_t__ is_tls13_capable (TYPE_3__ const*) ;
 scalar_t__ ssl_method_error (TYPE_3__ const*,int *) ;
 int * stub1 () ;
 int * stub2 () ;
 TYPE_2__* tls_version_table ;
 scalar_t__ version_cmp (TYPE_3__ const*,int,scalar_t__) ;

int ssl_version_supported(const SSL *s, int version, const SSL_METHOD **meth)
{
    const version_info *vent;
    const version_info *table;

    switch (s->method->version) {
    default:

        return version_cmp(s, version, s->version) == 0;
    case 128:
        table = tls_version_table;
        break;
    case 129:
        table = dtls_version_table;
        break;
    }

    for (vent = table;
         vent->version != 0 && version_cmp(s, version, vent->version) <= 0;
         ++vent) {
        if (vent->cmeth != ((void*)0)
                && version_cmp(s, version, vent->version) == 0
                && ssl_method_error(s, vent->cmeth()) == 0
                && (!s->server
                    || version != TLS1_3_VERSION
                    || is_tls13_capable(s))) {
            if (meth != ((void*)0))
                *meth = vent->cmeth();
            return 1;
        }
    }
    return 0;
}
