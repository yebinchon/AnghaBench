
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int id; int stats_sent_bytes; } ;
typedef scalar_t__ ssize_t ;


 int D_DEFLATE ;
 int D_WEB_CLIENT ;
 int WEB_CLIENT_IS_DEAD (struct web_client*) ;
 int debug (int ,char*,int ,...) ;
 scalar_t__ web_client_send_data (struct web_client*,char*,int,int ) ;

ssize_t web_client_send_chunk_finalize(struct web_client *w)
{


    ssize_t bytes;
    bytes = web_client_send_data(w,"\r\n0\r\n\r\n",7,0);
    if(bytes > 0) {
        debug(D_DEFLATE, "%llu: Sent chunk suffix %zd bytes.", w->id, bytes);
        w->stats_sent_bytes += bytes;
    }

    else if(bytes == 0) {
        debug(D_WEB_CLIENT, "%llu: Did not send chunk finalize suffix to the client.", w->id);
        WEB_CLIENT_IS_DEAD(w);
    }
    else {
        debug(D_WEB_CLIENT, "%llu: Failed to send chunk finalize suffix to client.", w->id);
        WEB_CLIENT_IS_DEAD(w);
    }

    return bytes;
}
