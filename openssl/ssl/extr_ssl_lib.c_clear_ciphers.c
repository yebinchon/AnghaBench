
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int write_hash; int read_hash; } ;
typedef TYPE_1__ SSL ;


 int ssl_clear_cipher_ctx (TYPE_1__*) ;
 int ssl_clear_hash_ctx (int *) ;

__attribute__((used)) static void clear_ciphers(SSL *s)
{

    ssl_clear_cipher_ctx(s);
    ssl_clear_hash_ctx(&s->read_hash);
    ssl_clear_hash_ctx(&s->write_hash);
}
