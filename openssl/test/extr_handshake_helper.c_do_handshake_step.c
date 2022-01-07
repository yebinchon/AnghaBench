
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* status; int ssl; } ;
typedef TYPE_1__ PEER ;


 void* PEER_ERROR ;
 int PEER_RETRY ;
 void* PEER_SUCCESS ;
 void* PEER_TEST_FAILURE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_do_handshake (int ) ;
 int SSL_get_error (int ,int) ;
 int TEST_int_eq (void*,int ) ;

__attribute__((used)) static void do_handshake_step(PEER *peer)
{
    if (!TEST_int_eq(peer->status, PEER_RETRY)) {
        peer->status = PEER_TEST_FAILURE;
    } else {
        int ret = SSL_do_handshake(peer->ssl);

        if (ret == 1) {
            peer->status = PEER_SUCCESS;
        } else if (ret == 0) {
            peer->status = PEER_ERROR;
        } else {
            int error = SSL_get_error(peer->ssl, ret);

            if (error != SSL_ERROR_WANT_READ)
                peer->status = PEER_ERROR;
        }
    }
}
