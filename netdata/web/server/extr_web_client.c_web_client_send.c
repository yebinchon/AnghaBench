
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int zoutput; size_t sent; scalar_t__ rlen; TYPE_1__* data; } ;
struct web_client {scalar_t__ mode; int id; TYPE_2__ response; int stats_sent_bytes; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ len; int * buffer; } ;


 int D_WEB_CLIENT ;
 int MSG_DONTWAIT ;
 int WEB_CLIENT_IS_DEAD (struct web_client*) ;
 scalar_t__ WEB_CLIENT_MODE_FILECOPY ;
 int debug (int ,char*,int ,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int web_client_disable_wait_send (struct web_client*) ;
 int web_client_has_keepalive (struct web_client*) ;
 scalar_t__ web_client_has_wait_receive (struct web_client*) ;
 int web_client_request_done (struct web_client*) ;
 scalar_t__ web_client_send_data (struct web_client*,int *,scalar_t__,int ) ;
 scalar_t__ web_client_send_deflate (struct web_client*) ;

ssize_t web_client_send(struct web_client *w) {




    ssize_t bytes;

    if(unlikely(w->response.data->len - w->response.sent == 0)) {


        debug(D_WEB_CLIENT, "%llu: Out of output data.", w->id);





        if(w->mode == WEB_CLIENT_MODE_FILECOPY && web_client_has_wait_receive(w) && w->response.rlen && w->response.rlen > w->response.data->len) {

            debug(D_WEB_CLIENT, "%llu: Waiting for more data to become available.", w->id);
            web_client_disable_wait_send(w);
            return 0;
        }

        if(unlikely(!web_client_has_keepalive(w))) {
            debug(D_WEB_CLIENT, "%llu: Closing (keep-alive is not enabled). %zu bytes sent.", w->id, w->response.sent);
            WEB_CLIENT_IS_DEAD(w);
            return 0;
        }

        web_client_request_done(w);
        debug(D_WEB_CLIENT, "%llu: Done sending all data on socket. Waiting for next request on the same socket.", w->id);
        return 0;
    }

    bytes = web_client_send_data(w,&w->response.data->buffer[w->response.sent], w->response.data->len - w->response.sent, MSG_DONTWAIT);
    if(likely(bytes > 0)) {
        w->stats_sent_bytes += bytes;
        w->response.sent += bytes;
        debug(D_WEB_CLIENT, "%llu: Sent %zd bytes.", w->id, bytes);
    }
    else if(likely(bytes == 0)) {
        debug(D_WEB_CLIENT, "%llu: Did not send any bytes to the client.", w->id);
        WEB_CLIENT_IS_DEAD(w);
    }
    else {
        debug(D_WEB_CLIENT, "%llu: Failed to send data to client.", w->id);
        WEB_CLIENT_IS_DEAD(w);
    }

    return(bytes);
}
