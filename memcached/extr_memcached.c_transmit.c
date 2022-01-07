
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct msghdr {scalar_t__ msg_iovlen; TYPE_3__* msg_iov; } ;
typedef int ssize_t ;
typedef enum transmit_result { ____Placeholder_transmit_result } transmit_result ;
struct TYPE_13__ {size_t msgcurr; size_t msgused; int (* sendmsg ) (TYPE_4__*,struct msghdr*,int ) ;int transport; TYPE_2__* thread; struct msghdr* msglist; } ;
typedef TYPE_4__ conn ;
typedef scalar_t__ caddr_t ;
struct TYPE_14__ {scalar_t__ verbose; } ;
struct TYPE_12__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_10__ {int bytes_written; int mutex; } ;
struct TYPE_11__ {TYPE_1__ stats; } ;


 scalar_t__ EAGAIN ;
 int EV_PERSIST ;
 int EV_WRITE ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ IS_UDP (int ) ;
 int TRANSMIT_COMPLETE ;
 int TRANSMIT_HARD_ERROR ;
 int TRANSMIT_INCOMPLETE ;
 int TRANSMIT_SOFT_ERROR ;
 int assert (int ) ;
 int conn_closing ;
 int conn_read ;
 int conn_set_state (TYPE_4__*,int ) ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_8__ settings ;
 int stderr ;
 int stub1 (TYPE_4__*,struct msghdr*,int ) ;
 int update_event (TYPE_4__*,int) ;

__attribute__((used)) static enum transmit_result transmit(conn *c) {
    assert(c != ((void*)0));

    if (c->msgcurr < c->msgused &&
            c->msglist[c->msgcurr].msg_iovlen == 0) {

        c->msgcurr++;
    }
    if (c->msgcurr < c->msgused) {
        ssize_t res;
        struct msghdr *m = &c->msglist[c->msgcurr];

        res = c->sendmsg(c, m, 0);
        if (res >= 0) {
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.bytes_written += res;
            pthread_mutex_unlock(&c->thread->stats.mutex);



            while (m->msg_iovlen > 0 && res >= m->msg_iov->iov_len) {
                res -= m->msg_iov->iov_len;
                m->msg_iovlen--;
                m->msg_iov++;
            }



            if (res > 0) {
                m->msg_iov->iov_base = (caddr_t)m->msg_iov->iov_base + res;
                m->msg_iov->iov_len -= res;
            }
            return TRANSMIT_INCOMPLETE;
        }
        if (res == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)) {
            if (!update_event(c, EV_WRITE | EV_PERSIST)) {
                if (settings.verbose > 0)
                    fprintf(stderr, "Couldn't update event\n");
                conn_set_state(c, conn_closing);
                return TRANSMIT_HARD_ERROR;
            }
            return TRANSMIT_SOFT_ERROR;
        }


        if (settings.verbose > 0)
            perror("Failed to write, and not due to blocking");

        if (IS_UDP(c->transport))
            conn_set_state(c, conn_read);
        else
            conn_set_state(c, conn_closing);
        return TRANSMIT_HARD_ERROR;
    } else {
        return TRANSMIT_COMPLETE;
    }
}
