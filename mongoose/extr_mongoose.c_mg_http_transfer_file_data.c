
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cgi_nc; } ;
struct TYPE_4__ {scalar_t__ cl; scalar_t__ sent; scalar_t__ type; int keepalive; int fp; } ;
struct mg_http_proto_data {TYPE_1__ cgi; TYPE_2__ file; } ;
struct mbuf {int len; int buf; } ;
struct mg_connection {int flags; struct mbuf recv_mbuf; struct mbuf send_mbuf; } ;


 scalar_t__ DATA_FILE ;
 scalar_t__ DATA_PUT ;
 int DBG (char*) ;
 int LL_DEBUG ;
 int LOG (int ,char*) ;
 int MG_F_SEND_AND_CLOSE ;
 int MG_MAX_HTTP_SEND_MBUF ;
 int mbuf_remove (struct mbuf*,size_t) ;
 int mg_forward (struct mg_connection*,int *) ;
 size_t mg_fread (char*,int,size_t,int ) ;
 size_t mg_fwrite (int ,int,size_t,int ) ;
 int mg_http_free_proto_data_file (TYPE_2__*) ;
 struct mg_http_proto_data* mg_http_get_proto_data (struct mg_connection*) ;
 int mg_send (struct mg_connection*,char*,size_t) ;

__attribute__((used)) static void mg_http_transfer_file_data(struct mg_connection *nc) {
  struct mg_http_proto_data *pd = mg_http_get_proto_data(nc);
  char buf[MG_MAX_HTTP_SEND_MBUF];
  size_t n = 0, to_read = 0, left = (size_t)(pd->file.cl - pd->file.sent);

  if (pd->file.type == DATA_FILE) {
    struct mbuf *io = &nc->send_mbuf;
    if (io->len >= MG_MAX_HTTP_SEND_MBUF) {
      to_read = 0;
    } else {
      to_read = MG_MAX_HTTP_SEND_MBUF - io->len;
    }
    if (to_read > left) {
      to_read = left;
    }
    if (to_read > 0) {
      n = mg_fread(buf, 1, to_read, pd->file.fp);
      if (n > 0) {
        mg_send(nc, buf, n);
        pd->file.sent += n;
        DBG(("%p sent %d (total %d)", nc, (int) n, (int) pd->file.sent));
      }
    } else {

    }
    if (pd->file.sent >= pd->file.cl) {
      LOG(LL_DEBUG, ("%p done, %d bytes, ka %d", nc, (int) pd->file.sent,
                     pd->file.keepalive));
      if (!pd->file.keepalive) nc->flags |= MG_F_SEND_AND_CLOSE;
      mg_http_free_proto_data_file(&pd->file);
    }
  } else if (pd->file.type == DATA_PUT) {
    struct mbuf *io = &nc->recv_mbuf;
    size_t to_write = left <= 0 ? 0 : left < io->len ? (size_t) left : io->len;
    size_t n = mg_fwrite(io->buf, 1, to_write, pd->file.fp);
    if (n > 0) {
      mbuf_remove(io, n);
      pd->file.sent += n;
    }
    if (n == 0 || pd->file.sent >= pd->file.cl) {
      if (!pd->file.keepalive) nc->flags |= MG_F_SEND_AND_CLOSE;
      mg_http_free_proto_data_file(&pd->file);
    }
  }
}
