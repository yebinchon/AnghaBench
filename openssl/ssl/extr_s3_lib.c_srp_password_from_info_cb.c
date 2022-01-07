
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info; } ;
struct TYPE_5__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;


 char* OPENSSL_strdup (int ) ;

__attribute__((used)) static char *srp_password_from_info_cb(SSL *s, void *arg)
{
    return OPENSSL_strdup(s->srp_ctx.info);
}
