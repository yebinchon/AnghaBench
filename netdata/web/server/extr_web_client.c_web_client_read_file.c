
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rlen; TYPE_2__* data; } ;
struct web_client {scalar_t__ ifd; scalar_t__ ofd; int id; TYPE_1__ response; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ len; char* buffer; } ;


 int D_WEB_CLIENT ;
 int D_WEB_DATA ;
 int WEB_CLIENT_IS_DEAD (struct web_client*) ;
 scalar_t__ WEB_SERVER_MODE_STATIC_THREADED ;
 int buffer_need_bytes (TYPE_2__*,scalar_t__) ;
 int close (scalar_t__) ;
 int debug (int ,char*,int ,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ read (scalar_t__,char*,size_t) ;
 scalar_t__ unlikely (int) ;
 int web_client_disable_wait_receive (struct web_client*) ;
 int web_client_enable_wait_send (struct web_client*) ;
 scalar_t__ web_server_mode ;

ssize_t web_client_read_file(struct web_client *w)
{
    if(unlikely(w->response.rlen > w->response.data->size))
        buffer_need_bytes(w->response.data, w->response.rlen - w->response.data->size);

    if(unlikely(w->response.rlen <= w->response.data->len))
        return 0;

    ssize_t left = w->response.rlen - w->response.data->len;
    ssize_t bytes = read(w->ifd, &w->response.data->buffer[w->response.data->len], (size_t)left);
    if(likely(bytes > 0)) {
        size_t old = w->response.data->len;
        (void)old;

        w->response.data->len += bytes;
        w->response.data->buffer[w->response.data->len] = '\0';

        debug(D_WEB_CLIENT, "%llu: Read %zd bytes.", w->id, bytes);
        debug(D_WEB_DATA, "%llu: Read data: '%s'.", w->id, &w->response.data->buffer[old]);

        web_client_enable_wait_send(w);

        if(w->response.rlen && w->response.data->len >= w->response.rlen)
            web_client_disable_wait_receive(w);
    }
    else if(likely(bytes == 0)) {
        debug(D_WEB_CLIENT, "%llu: Out of input file data.", w->id);







        web_client_disable_wait_receive(w);

        debug(D_WEB_CLIENT, "%llu: Read the whole file.", w->id);

        if(web_server_mode != WEB_SERVER_MODE_STATIC_THREADED) {
            if (w->ifd != w->ofd) close(w->ifd);
        }

        w->ifd = w->ofd;
    }
    else {
        debug(D_WEB_CLIENT, "%llu: read data failed.", w->id);
        WEB_CLIENT_IS_DEAD(w);
    }

    return(bytes);
}
