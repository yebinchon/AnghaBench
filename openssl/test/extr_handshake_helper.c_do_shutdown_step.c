
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int ssl; } ;
typedef TYPE_1__ PEER ;


 int PEER_ERROR ;
 int PEER_RETRY ;
 int PEER_SUCCESS ;
 int PEER_TEST_FAILURE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_get_error (int ,int) ;
 int SSL_shutdown (int ) ;
 int TEST_int_eq (int ,int ) ;

__attribute__((used)) static void do_shutdown_step(PEER *peer)
{
    int ret;

    if (!TEST_int_eq(peer->status, PEER_RETRY)) {
        peer->status = PEER_TEST_FAILURE;
        return;
    }
    ret = SSL_shutdown(peer->ssl);

    if (ret == 1) {
        peer->status = PEER_SUCCESS;
    } else if (ret < 0) {
        int error = SSL_get_error(peer->ssl, ret);

        if (error != SSL_ERROR_WANT_READ && error != SSL_ERROR_WANT_WRITE)
            peer->status = PEER_ERROR;
    }
}
