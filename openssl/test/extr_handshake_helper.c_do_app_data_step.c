
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; scalar_t__ bytes_to_read; int bytes_to_write; int write_buf_len; int write_buf; int ssl; int read_buf_len; int read_buf; } ;
typedef TYPE_1__ PEER ;


 void* PEER_ERROR ;
 int PEER_RETRY ;
 int PEER_SUCCESS ;
 void* PEER_TEST_FAILURE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_get_error (int ,int) ;
 int SSL_read (int ,int ,int ) ;
 int SSL_write (int ,int ,int) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_le (int,scalar_t__) ;

__attribute__((used)) static void do_app_data_step(PEER *peer)
{
    int ret = 1, write_bytes;

    if (!TEST_int_eq(peer->status, PEER_RETRY)) {
        peer->status = PEER_TEST_FAILURE;
        return;
    }


    while (ret > 0 && peer->bytes_to_read) {
        ret = SSL_read(peer->ssl, peer->read_buf, peer->read_buf_len);
        if (ret > 0) {
            if (!TEST_int_le(ret, peer->bytes_to_read)) {
                peer->status = PEER_TEST_FAILURE;
                return;
            }
            peer->bytes_to_read -= ret;
        } else if (ret == 0) {
            peer->status = PEER_ERROR;
            return;
        } else {
            int error = SSL_get_error(peer->ssl, ret);
            if (error != SSL_ERROR_WANT_READ) {
                peer->status = PEER_ERROR;
                return;
            }
        }
    }


    write_bytes = peer->bytes_to_write < peer->write_buf_len ? peer->bytes_to_write :
        peer->write_buf_len;
    if (write_bytes) {
        ret = SSL_write(peer->ssl, peer->write_buf, write_bytes);
        if (ret > 0) {

            if (!TEST_int_eq(ret, write_bytes)) {
                peer->status = PEER_TEST_FAILURE;
                return;
            }
            peer->bytes_to_write -= ret;
        } else {




            peer->status = PEER_ERROR;
            return;
        }
    }







    if (peer->bytes_to_write == 0 && peer->bytes_to_read == 0) {
        peer->status = PEER_SUCCESS;
    }
}
