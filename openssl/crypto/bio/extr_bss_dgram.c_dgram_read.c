
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int socklen_t ;
typedef int peer ;
struct TYPE_9__ {int _errno; int connected; scalar_t__ peekmode; } ;
typedef TYPE_1__ bio_dgram_data ;
struct TYPE_10__ {int num; scalar_t__ ptr; } ;
typedef int BIO_ADDR ;
typedef TYPE_2__ BIO ;


 int BIO_ADDR_sockaddr_noconst (int *) ;
 int BIO_CTRL_DGRAM_SET_PEER ;
 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_ctrl (TYPE_2__*,int ,int ,int *) ;
 scalar_t__ BIO_dgram_should_retry (int) ;
 int BIO_set_retry_read (TYPE_2__*) ;
 int MSG_PEEK ;
 int clear_socket_error () ;
 int dgram_adjust_rcv_timeout (TYPE_2__*) ;
 int dgram_reset_rcv_timeout (TYPE_2__*) ;
 int get_last_socket_error () ;
 int memset (int *,int ,int) ;
 int recvfrom (int ,char*,int,int,int ,int*) ;

__attribute__((used)) static int dgram_read(BIO *b, char *out, int outl)
{
    int ret = 0;
    bio_dgram_data *data = (bio_dgram_data *)b->ptr;
    int flags = 0;

    BIO_ADDR peer;
    socklen_t len = sizeof(peer);

    if (out != ((void*)0)) {
        clear_socket_error();
        memset(&peer, 0, sizeof(peer));
        dgram_adjust_rcv_timeout(b);
        if (data->peekmode)
            flags = MSG_PEEK;
        ret = recvfrom(b->num, out, outl, flags,
                       BIO_ADDR_sockaddr_noconst(&peer), &len);

        if (!data->connected && ret >= 0)
            BIO_ctrl(b, BIO_CTRL_DGRAM_SET_PEER, 0, &peer);

        BIO_clear_retry_flags(b);
        if (ret < 0) {
            if (BIO_dgram_should_retry(ret)) {
                BIO_set_retry_read(b);
                data->_errno = get_last_socket_error();
            }
        }

        dgram_reset_rcv_timeout(b);
    }
    return ret;
}
