
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * sigalg; } ;
struct TYPE_9__ {TYPE_1__ tmp; } ;
struct TYPE_11__ {TYPE_3__* cert; TYPE_2__ s3; } ;
struct TYPE_10__ {int cert_flags; } ;
typedef TYPE_4__ SSL ;


 int SSL_CERT_FLAGS_CHECK_TLS_STRICT ;
 int tls1_check_chain (TYPE_4__*,int *,int *,int *,int) ;
 int tls_choose_sigalg (TYPE_4__*,int ) ;

__attribute__((used)) static int ssl3_check_client_certificate(SSL *s)
{

    if (!tls_choose_sigalg(s, 0) || s->s3.tmp.sigalg == ((void*)0))
        return 0;




    if (s->cert->cert_flags & SSL_CERT_FLAGS_CHECK_TLS_STRICT &&
        !tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), -2))
        return 0;
    return 1;
}
