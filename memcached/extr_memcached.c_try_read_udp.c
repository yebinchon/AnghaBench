
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef enum try_read_result { ____Placeholder_try_read_result } try_read_result ;
struct TYPE_8__ {int request_addr_size; unsigned char request_id; int rbytes; scalar_t__ rbuf; scalar_t__ rcurr; TYPE_2__* thread; int request_addr; int rsize; int sfd; } ;
typedef TYPE_3__ conn ;
struct TYPE_6__ {int bytes_read; int mutex; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;


 int READ_DATA_RECEIVED ;
 int READ_NO_DATA_RECEIVED ;
 int assert (int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int out_string (TYPE_3__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int recvfrom (int ,scalar_t__,int ,int ,struct sockaddr*,int*) ;

__attribute__((used)) static enum try_read_result try_read_udp(conn *c) {
    int res;

    assert(c != ((void*)0));

    c->request_addr_size = sizeof(c->request_addr);
    res = recvfrom(c->sfd, c->rbuf, c->rsize,
                   0, (struct sockaddr *)&c->request_addr,
                   &c->request_addr_size);
    if (res > 8) {
        unsigned char *buf = (unsigned char *)c->rbuf;
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.bytes_read += res;
        pthread_mutex_unlock(&c->thread->stats.mutex);


        c->request_id = buf[0] * 256 + buf[1];


        if (buf[4] != 0 || buf[5] != 1) {
            out_string(c, "SERVER_ERROR multi-packet request not supported");
            return READ_NO_DATA_RECEIVED;
        }


        res -= 8;
        memmove(c->rbuf, c->rbuf + 8, res);

        c->rbytes = res;
        c->rcurr = c->rbuf;
        return READ_DATA_RECEIVED;
    }
    return READ_NO_DATA_RECEIVED;
}
