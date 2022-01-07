
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct web_client {scalar_t__ mode; scalar_t__ ifd; scalar_t__ ofd; int id; int pollinfo_slot; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_11__ {int file_reads; } ;
struct TYPE_10__ {size_t slot; int fd; TYPE_2__* p; scalar_t__ data; } ;
struct TYPE_9__ {TYPE_1__* fds; } ;
struct TYPE_8__ {int events; } ;
typedef TYPE_2__ POLLJOB ;
typedef TYPE_3__ POLLINFO ;


 int D_WEB_CLIENT ;
 short POLLIN ;
 int POLLOUT ;
 scalar_t__ WEB_CLIENT_MODE_FILECOPY ;
 int debug (int ,char*,int ,int ,...) ;
 scalar_t__ likely (int ) ;
 TYPE_3__* pollinfo_from_slot (TYPE_2__*,int ) ;
 scalar_t__ unlikely (int) ;
 int web_client_has_wait_send (struct web_client*) ;
 int web_client_read_file (struct web_client*) ;
 TYPE_4__* worker_private ;

__attribute__((used)) static int web_server_file_read_callback(POLLINFO *pi, short int *events) {
    struct web_client *w = (struct web_client *)pi->data;



    if(unlikely(!w->pollinfo_slot)) {
        debug(D_WEB_CLIENT, "%llu: PREVENTED ATTEMPT TO READ FILE ON FD %d, ON CLOSED WEB CLIENT", w->id, pi->fd);
        return -1;
    }

    if(unlikely(w->mode != WEB_CLIENT_MODE_FILECOPY || w->ifd == w->ofd)) {
        debug(D_WEB_CLIENT, "%llu: PREVENTED ATTEMPT TO READ FILE ON FD %d, ON NON-FILECOPY WEB CLIENT", w->id, pi->fd);
        return -1;
    }

    debug(D_WEB_CLIENT, "%llu: READING FILE ON FD %d", w->id, pi->fd);

    worker_private->file_reads++;
    ssize_t ret = unlikely(web_client_read_file(w));

    if(likely(web_client_has_wait_send(w))) {
        POLLJOB *p = pi->p;
        POLLINFO *wpi = pollinfo_from_slot(p, w->pollinfo_slot);

        debug(D_WEB_CLIENT, "%llu: SIGNALING W TO SEND (iFD %d, oFD %d)", w->id, pi->fd, wpi->fd);
        p->fds[wpi->slot].events |= POLLOUT;
    }

    if(unlikely(ret <= 0 || w->ifd == w->ofd)) {
        debug(D_WEB_CLIENT, "%llu: DONE READING FILE ON FD %d", w->id, pi->fd);
        return -1;
    }

    *events = POLLIN;
    return 0;
}
