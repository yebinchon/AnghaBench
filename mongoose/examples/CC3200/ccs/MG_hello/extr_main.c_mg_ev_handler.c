
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_str {int len; int p; } ;
struct mg_serve_http_opts {char* document_root; } ;
struct mg_http_multipart_part {int file_name; } ;
struct mg_connection {void* user_data; int flags; int sa; } ;
struct TYPE_4__ {int p; scalar_t__ len; } ;
struct TYPE_3__ {int p; scalar_t__ len; } ;
struct http_message {TYPE_2__ uri; TYPE_1__ method; } ;
typedef int opts ;
typedef int cs_stat_t ;
typedef int addr ;


 int LL_DEBUG ;
 int LL_INFO ;
 int LOG (int ,char*) ;







 int MG_F_SEND_AND_CLOSE ;
 int MG_SOCK_STRINGIFY_IP ;
 int MG_SOCK_STRINGIFY_PORT ;
 intptr_t atoi (char*) ;
 int memcpy (char*,int ,int) ;
 int memset (struct mg_serve_http_opts*,int ,int) ;
 int mg_file_upload_handler (struct mg_connection*,int,void*,int ) ;
 struct mg_str* mg_get_http_header (struct http_message*,char*) ;
 int mg_send (struct mg_connection*,int ,int ) ;
 int mg_serve_http (struct mg_connection*,struct http_message*,struct mg_serve_http_opts) ;
 int mg_sock_addr_to_str (int *,char*,int,int) ;
 int mg_stat (char*,int *) ;
 int mg_vcmp (TYPE_2__*,char*) ;
 int strlen (int ) ;
 int upload_fname ;
 int upload_form ;

void mg_ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  LOG(LL_DEBUG, ("%p ev %d", nc, ev));

  switch (ev) {
    case 134: {
      char addr[32];
      mg_sock_addr_to_str(&nc->sa, addr, sizeof(addr),
                          MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
      LOG(LL_INFO, ("Connection %p from %s", nc, addr));
      break;
    }
    case 128: {
      char addr[32];
      struct http_message *hm = (struct http_message *) ev_data;
      cs_stat_t st;
      mg_sock_addr_to_str(&nc->sa, addr, sizeof(addr),
                          MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
      LOG(LL_INFO,
          ("HTTP request from %s: %.*s %.*s", addr, (int) hm->method.len,
           hm->method.p, (int) hm->uri.len, hm->uri.p));
      if (mg_vcmp(&hm->uri, "/upload") == 0 ||
          (mg_vcmp(&hm->uri, "/") == 0 && mg_stat("SL:index.html", &st) != 0)) {
        mg_send(nc, upload_form, strlen(upload_form));
        nc->flags |= MG_F_SEND_AND_CLOSE;
        break;
      }
      struct mg_serve_http_opts opts;
      memset(&opts, 0, sizeof(opts));
      opts.document_root = "SL:";
      mg_serve_http(nc, hm, opts);
      break;
    }
    case 133: {
      LOG(LL_INFO, ("Connection %p closed", nc));
      break;
    }



    case 132: {
      struct http_message *hm = (struct http_message *) ev_data;
      struct mg_str *cl_header = mg_get_http_header(hm, "Content-Length");
      intptr_t cl = -1;
      if (cl_header != ((void*)0) && cl_header->len < 20) {
        char buf[20];
        memcpy(buf, cl_header->p, cl_header->len);
        buf[cl_header->len] = '\0';
        cl = atoi(buf);
        if (cl < 0) cl = -1;
      }
      nc->user_data = (void *) cl;
      break;
    }
    case 131:
    case 130:
    case 129: {
      struct mg_http_multipart_part *mp =
          (struct mg_http_multipart_part *) ev_data;
      if (ev == 131) {
        LOG(LL_INFO, ("Begin file upload: %s", mp->file_name));
      } else if (ev == 129) {
        LOG(LL_INFO, ("End file upload: %s", mp->file_name));
      }
      mg_file_upload_handler(nc, ev, ev_data, upload_fname);
    }
  }
}
