
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handshake_dgst; } ;
struct TYPE_6__ {int * pha_dgst; TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_MD_CTX_copy_ex (int ,int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

int tls13_restore_handshake_digest_for_pha(SSL *s)
{
    if (s->pha_dgst == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!EVP_MD_CTX_copy_ex(s->s3.handshake_dgst,
                            s->pha_dgst)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    return 1;
}
