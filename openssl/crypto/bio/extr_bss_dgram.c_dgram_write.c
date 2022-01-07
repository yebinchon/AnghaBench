
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int _errno; int peer; scalar_t__ connected; } ;
typedef TYPE_1__ bio_dgram_data ;
struct TYPE_7__ {int num; scalar_t__ ptr; } ;
typedef TYPE_2__ BIO ;


 int BIO_ADDR_sockaddr (int *) ;
 int BIO_ADDR_sockaddr_size (int *) ;
 int BIO_clear_retry_flags (TYPE_2__*) ;
 scalar_t__ BIO_dgram_should_retry (int) ;
 int BIO_set_retry_write (TYPE_2__*) ;
 int clear_socket_error () ;
 int get_last_socket_error () ;
 int sendto (int ,char const*,int,int ,int ,int) ;
 int writesocket (int ,char const*,int) ;

__attribute__((used)) static int dgram_write(BIO *b, const char *in, int inl)
{
    int ret;
    bio_dgram_data *data = (bio_dgram_data *)b->ptr;
    clear_socket_error();

    if (data->connected)
        ret = writesocket(b->num, in, inl);
    else {
        int peerlen = BIO_ADDR_sockaddr_size(&data->peer);

        ret = sendto(b->num, in, inl, 0,
                     BIO_ADDR_sockaddr(&data->peer), peerlen);
    }

    BIO_clear_retry_flags(b);
    if (ret <= 0) {
        if (BIO_dgram_should_retry(ret)) {
            BIO_set_retry_write(b);
            data->_errno = get_last_socket_error();
        }
    }
    return ret;
}
