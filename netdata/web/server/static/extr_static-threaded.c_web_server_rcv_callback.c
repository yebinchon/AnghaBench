
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct web_client {scalar_t__ mode; scalar_t__ pollinfo_filecopy_slot; int ifd; int ofd; int id; } ;
struct TYPE_6__ {int receptions; } ;
struct TYPE_5__ {int fd; scalar_t__ slot; int port_acl; int p; scalar_t__ data; } ;
typedef TYPE_1__ POLLINFO ;


 int D_WEB_CLIENT ;
 short POLLIN ;
 int POLLINFO_FLAG_CLIENT_SOCKET ;
 short POLLOUT ;
 scalar_t__ WEB_CLIENT_MODE_FILECOPY ;
 int debug (int ,char*,int ,int) ;
 int error (char*) ;
 TYPE_1__* poll_add_fd (int ,int,int ,int ,int ,char*,char*,char*,int ,int ,int ,int ,void*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ web_client_has_wait_receive (struct web_client*) ;
 scalar_t__ web_client_has_wait_send (struct web_client*) ;
 int web_client_process_request (struct web_client*) ;
 scalar_t__ web_client_receive (struct web_client*) ;
 int web_server_check_client_status (struct web_client*) ;
 int web_server_file_add_callback ;
 int web_server_file_del_callback ;
 int web_server_file_read_callback ;
 int web_server_file_write_callback ;
 TYPE_2__* worker_private ;

__attribute__((used)) static int web_server_rcv_callback(POLLINFO *pi, short int *events) {
    worker_private->receptions++;

    struct web_client *w = (struct web_client *)pi->data;
    int fd = pi->fd;



    if(unlikely(web_client_receive(w) < 0))
        return -1;

    debug(D_WEB_CLIENT, "%llu: processing received data on fd %d.", w->id, fd);
    web_client_process_request(w);

    if(unlikely(w->mode == WEB_CLIENT_MODE_FILECOPY)) {
        if(w->pollinfo_filecopy_slot == 0) {
            debug(D_WEB_CLIENT, "%llu: FILECOPY DETECTED ON FD %d", w->id, pi->fd);

            if (unlikely(w->ifd != -1 && w->ifd != w->ofd && w->ifd != fd)) {

                debug(D_WEB_CLIENT, "%llu: CREATING FILECOPY SLOT ON FD %d", w->id, pi->fd);

                POLLINFO *fpi = poll_add_fd(
                        pi->p
                        , w->ifd
                        , pi->port_acl
                        , 0
                        , POLLINFO_FLAG_CLIENT_SOCKET
                        , "FILENAME"
                        , ""
                        , ""
                        , web_server_file_add_callback
                        , web_server_file_del_callback
                        , web_server_file_read_callback
                        , web_server_file_write_callback
                        , (void *) w
                );

                if(fpi)
                    w->pollinfo_filecopy_slot = fpi->slot;
                else {
                    error("Failed to add filecopy fd. Closing client.");
                    return -1;
                }
            }
        }
    }
    else {
        if(unlikely(w->ifd == fd && web_client_has_wait_receive(w)))
            *events |= POLLIN;
    }

    if(unlikely(w->ofd == fd && web_client_has_wait_send(w)))
        *events |= POLLOUT;

    return web_server_check_client_status(w);
}
