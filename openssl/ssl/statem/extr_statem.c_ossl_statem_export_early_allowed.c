
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ early_data; } ;
struct TYPE_5__ {TYPE_1__ ext; int server; } ;
typedef TYPE_2__ SSL ;


 scalar_t__ SSL_EARLY_DATA_ACCEPTED ;
 scalar_t__ SSL_EARLY_DATA_NOT_SENT ;

int ossl_statem_export_early_allowed(SSL *s)
{





    return s->ext.early_data == SSL_EARLY_DATA_ACCEPTED
           || (!s->server && s->ext.early_data != SSL_EARLY_DATA_NOT_SENT);
}
