
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_buf; int write_buf; int ssl; } ;
typedef TYPE_1__ PEER ;


 int OPENSSL_free (int ) ;
 int SSL_free (int ) ;

__attribute__((used)) static void peer_free_data(PEER *peer)
{
    SSL_free(peer->ssl);
    OPENSSL_free(peer->write_buf);
    OPENSSL_free(peer->read_buf);
}
