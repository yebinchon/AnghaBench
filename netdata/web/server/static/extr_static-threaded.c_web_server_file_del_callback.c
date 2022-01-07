
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct web_client {int ofd; int id; int pollinfo_slot; scalar_t__ pollinfo_filecopy_slot; } ;
struct TYPE_3__ {int fd; scalar_t__ data; } ;
typedef TYPE_1__ POLLINFO ;


 int D_WEB_CLIENT ;
 int debug (int ,char*,int ,int ,...) ;
 scalar_t__ unlikely (int) ;
 int web_client_release (struct web_client*) ;

__attribute__((used)) static void web_server_file_del_callback(POLLINFO *pi) {
    struct web_client *w = (struct web_client *)pi->data;
    debug(D_WEB_CLIENT, "%llu: RELEASE FILE READ ON FD %d", w->id, pi->fd);

    w->pollinfo_filecopy_slot = 0;

    if(unlikely(!w->pollinfo_slot)) {
        debug(D_WEB_CLIENT, "%llu: CROSS WEB CLIENT CLEANUP (iFD %d, oFD %d)", w->id, pi->fd, w->ofd);
        web_client_release(w);
    }
}
