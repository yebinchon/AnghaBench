#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mg_str {int len; int /*<<< orphan*/  p; } ;
struct mg_serve_http_opts {char* document_root; } ;
struct mg_http_multipart_part {int /*<<< orphan*/  file_name; } ;
struct mg_connection {void* user_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  sa; } ;
struct TYPE_4__ {int /*<<< orphan*/  p; scalar_t__ len; } ;
struct TYPE_3__ {int /*<<< orphan*/  p; scalar_t__ len; } ;
struct http_message {TYPE_2__ uri; TYPE_1__ method; } ;
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  cs_stat_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  LL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  MG_EV_ACCEPT 134 
#define  MG_EV_CLOSE 133 
#define  MG_EV_HTTP_MULTIPART_REQUEST 132 
#define  MG_EV_HTTP_PART_BEGIN 131 
#define  MG_EV_HTTP_PART_DATA 130 
#define  MG_EV_HTTP_PART_END 129 
#define  MG_EV_HTTP_REQUEST 128 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int MG_SOCK_STRINGIFY_IP ; 
 int MG_SOCK_STRINGIFY_PORT ; 
 intptr_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_serve_http_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,int,void*,int /*<<< orphan*/ ) ; 
 struct mg_str* FUNC5 (struct http_message*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*,struct http_message*,struct mg_serve_http_opts) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  upload_fname ; 
 int /*<<< orphan*/  upload_form ; 

void FUNC12(struct mg_connection *nc, int ev, void *ev_data) {
  FUNC0(LL_DEBUG, ("%p ev %d", nc, ev));

  switch (ev) {
    case MG_EV_ACCEPT: {
      char addr[32];
      FUNC8(&nc->sa, addr, sizeof(addr),
                          MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
      FUNC0(LL_INFO, ("Connection %p from %s", nc, addr));
      break;
    }
    case MG_EV_HTTP_REQUEST: {
      char addr[32];
      struct http_message *hm = (struct http_message *) ev_data;
      cs_stat_t st;
      FUNC8(&nc->sa, addr, sizeof(addr),
                          MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
      FUNC0(LL_INFO,
          ("HTTP request from %s: %.*s %.*s", addr, (int) hm->method.len,
           hm->method.p, (int) hm->uri.len, hm->uri.p));
      if (FUNC10(&hm->uri, "/upload") == 0 ||
          (FUNC10(&hm->uri, "/") == 0 && FUNC9("SL:index.html", &st) != 0)) {
        FUNC6(nc, upload_form, FUNC11(upload_form));
        nc->flags |= MG_F_SEND_AND_CLOSE;
        break;
      }
      struct mg_serve_http_opts opts;
      FUNC3(&opts, 0, sizeof(opts));
      opts.document_root = "SL:";
      FUNC7(nc, hm, opts);
      break;
    }
    case MG_EV_CLOSE: {
      FUNC0(LL_INFO, ("Connection %p closed", nc));
      break;
    }
    /* SimpleLink FS requires pre-declaring max file size. We use Content-Length
     * for that purpose - it will not exactly match file size, but is guaranteed
     * to exceed it and should be close enough. */
    case MG_EV_HTTP_MULTIPART_REQUEST: {
      struct http_message *hm = (struct http_message *) ev_data;
      struct mg_str *cl_header = FUNC5(hm, "Content-Length");
      intptr_t cl = -1;
      if (cl_header != NULL && cl_header->len < 20) {
        char buf[20];
        FUNC2(buf, cl_header->p, cl_header->len);
        buf[cl_header->len] = '\0';
        cl = FUNC1(buf);
        if (cl < 0) cl = -1;
      }
      nc->user_data = (void *) cl;
      break;
    }
    case MG_EV_HTTP_PART_BEGIN:
    case MG_EV_HTTP_PART_DATA:
    case MG_EV_HTTP_PART_END: {
      struct mg_http_multipart_part *mp =
          (struct mg_http_multipart_part *) ev_data;
      if (ev == MG_EV_HTTP_PART_BEGIN) {
        FUNC0(LL_INFO, ("Begin file upload: %s", mp->file_name));
      } else if (ev == MG_EV_HTTP_PART_END) {
        FUNC0(LL_INFO, ("End file upload: %s", mp->file_name));
      }
      FUNC4(nc, ev, ev_data, upload_fname);
    }
  }
}