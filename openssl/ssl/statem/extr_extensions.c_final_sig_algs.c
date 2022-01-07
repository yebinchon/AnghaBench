
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hit; } ;
typedef TYPE_1__ SSL ;


 int SSL_F_FINAL_SIG_ALGS ;
 scalar_t__ SSL_IS_TLS13 (TYPE_1__*) ;
 int SSL_R_MISSING_SIGALGS_EXTENSION ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int TLS13_AD_MISSING_EXTENSION ;

__attribute__((used)) static int final_sig_algs(SSL *s, unsigned int context, int sent)
{
    if (!sent && SSL_IS_TLS13(s) && !s->hit) {
        SSLfatal(s, TLS13_AD_MISSING_EXTENSION, SSL_F_FINAL_SIG_ALGS,
                 SSL_R_MISSING_SIGALGS_EXTENSION);
        return 0;
    }

    return 1;
}
