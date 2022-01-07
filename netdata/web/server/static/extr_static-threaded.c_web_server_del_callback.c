
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct web_client {int id; int pollinfo_filecopy_slot; scalar_t__ pollinfo_slot; } ;
struct TYPE_6__ {int disconnected; } ;
struct TYPE_5__ {int fd; int flags; int p; scalar_t__ data; } ;
typedef TYPE_1__ POLLINFO ;


 int D_WEB_CLIENT ;
 int POLLINFO_FLAG_DONT_CLOSE ;
 int WEB_CLIENT_FLAG_DONT_CLOSE_SOCKET ;
 int debug (int ,char*,int ,int ) ;
 TYPE_1__* pollinfo_from_slot (int ,int ) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ web_client_flag_check (struct web_client*,int ) ;
 int web_client_release (struct web_client*) ;
 TYPE_2__* worker_private ;

__attribute__((used)) static void web_server_del_callback(POLLINFO *pi) {
    worker_private->disconnected++;

    struct web_client *w = (struct web_client *)pi->data;

    w->pollinfo_slot = 0;
    if(unlikely(w->pollinfo_filecopy_slot)) {
        POLLINFO *fpi = pollinfo_from_slot(pi->p, w->pollinfo_filecopy_slot);
        (void)fpi;

        debug(D_WEB_CLIENT, "%llu: THE CLIENT WILL BE FRED BY READING FILE JOB ON FD %d", w->id, fpi->fd);
    }
    else {
        if(web_client_flag_check(w, WEB_CLIENT_FLAG_DONT_CLOSE_SOCKET))
            pi->flags |= POLLINFO_FLAG_DONT_CLOSE;

        debug(D_WEB_CLIENT, "%llu: CLOSING CLIENT FD %d", w->id, pi->fd);
        web_client_release(w);
    }
}
