
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* data; } ;
struct TYPE_4__ {scalar_t__ conn; int flags; } ;
struct web_client {scalar_t__ mode; int id; TYPE_2__ response; int stats_received_bytes; int ifd; TYPE_1__ ssl; } ;
typedef int ssize_t ;
struct TYPE_6__ {int size; size_t len; char* buffer; } ;


 int D_WEB_CLIENT ;
 int D_WEB_DATA ;
 int MSG_DONTWAIT ;
 int NETDATA_WEB_REQUEST_RECEIVE_SIZE ;
 int SSL_read (scalar_t__,char*,size_t) ;
 int WEB_CLIENT_IS_DEAD (struct web_client*) ;
 scalar_t__ WEB_CLIENT_MODE_FILECOPY ;
 int buffer_need_bytes (TYPE_3__*,int ) ;
 int debug (int ,char*,int ,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ netdata_srv_ctx ;
 int recv (int ,char*,size_t,int ) ;
 scalar_t__ unlikely (int) ;
 int web_client_check_unix (struct web_client*) ;
 int web_client_read_file (struct web_client*) ;

ssize_t web_client_receive(struct web_client *w)
{
    if(unlikely(w->mode == WEB_CLIENT_MODE_FILECOPY))
        return web_client_read_file(w);

    ssize_t bytes;
    ssize_t left = w->response.data->size - w->response.data->len;


    buffer_need_bytes(w->response.data, NETDATA_WEB_REQUEST_RECEIVE_SIZE);
    bytes = recv(w->ifd, &w->response.data->buffer[w->response.data->len], (size_t) (left - 1), MSG_DONTWAIT);


    if(likely(bytes > 0)) {
        w->stats_received_bytes += bytes;

        size_t old = w->response.data->len;
        (void)old;

        w->response.data->len += bytes;
        w->response.data->buffer[w->response.data->len] = '\0';

        debug(D_WEB_CLIENT, "%llu: Received %zd bytes.", w->id, bytes);
        debug(D_WEB_DATA, "%llu: Received data: '%s'.", w->id, &w->response.data->buffer[old]);
    }
    else {
        debug(D_WEB_CLIENT, "%llu: receive data failed.", w->id);
        WEB_CLIENT_IS_DEAD(w);
    }

    return(bytes);
}
