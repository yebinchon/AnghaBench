
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ alpn_proposed_len; int * alpn_proposed; scalar_t__ alpn_selected_len; int * alpn_selected; } ;
struct TYPE_5__ {TYPE_1__ s3; scalar_t__ server; } ;
typedef TYPE_2__ SSL ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static int init_alpn(SSL *s, unsigned int context)
{
    OPENSSL_free(s->s3.alpn_selected);
    s->s3.alpn_selected = ((void*)0);
    s->s3.alpn_selected_len = 0;
    if (s->server) {
        OPENSSL_free(s->s3.alpn_proposed);
        s->s3.alpn_proposed = ((void*)0);
        s->s3.alpn_proposed_len = 0;
    }
    return 1;
}
