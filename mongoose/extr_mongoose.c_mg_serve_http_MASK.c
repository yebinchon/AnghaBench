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
typedef  int /*<<< orphan*/  uint32_t ;
struct mg_str {int dummy; } ;
struct mg_serve_http_opts {char* document_root; char* per_directory_auth_file; char* enable_directory_listing; char* cgi_file_pattern; char* ssi_pattern; char* index_files; int /*<<< orphan*/  ip_acl; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_4__ {TYPE_1__ sin; } ;
struct mg_connection {int /*<<< orphan*/  flags; TYPE_2__ sa; } ;
struct http_message {struct mg_str proto; int /*<<< orphan*/  uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mg_str* FUNC2 (struct http_message*,char*) ; 
 scalar_t__ FUNC3 (struct mg_connection*,struct http_message*,struct mg_serve_http_opts*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct mg_connection*,struct http_message*,struct mg_serve_http_opts*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*,char*,struct mg_str*,struct http_message*,struct mg_serve_http_opts*) ; 
 scalar_t__ FUNC8 (struct http_message*,struct mg_serve_http_opts*,char**,struct mg_str*) ; 
 scalar_t__ FUNC9 (struct mg_str*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct mg_connection *nc, struct http_message *hm,
                   struct mg_serve_http_opts opts) {
  char *path = NULL;
  struct mg_str *hdr, path_info;
  uint32_t remote_ip = FUNC10(*(uint32_t *) &nc->sa.sin.sin_addr);

  if (FUNC1(opts.ip_acl, remote_ip) != 1) {
    /* Not allowed to connect */
    FUNC4(nc, 403, NULL);
    nc->flags |= MG_F_SEND_AND_CLOSE;
    return;
  }

#if MG_ENABLE_HTTP_URL_REWRITES
  if (mg_http_handle_forwarding(nc, hm, &opts)) {
    return;
  }

  if (mg_http_send_port_based_redirect(nc, hm, &opts)) {
    return;
  }
#endif

  if (opts.document_root == NULL) {
    opts.document_root = ".";
  }
  if (opts.per_directory_auth_file == NULL) {
    opts.per_directory_auth_file = ".htpasswd";
  }
  if (opts.enable_directory_listing == NULL) {
    opts.enable_directory_listing = "yes";
  }
  if (opts.cgi_file_pattern == NULL) {
    opts.cgi_file_pattern = "**.cgi$|**.php$";
  }
  if (opts.ssi_pattern == NULL) {
    opts.ssi_pattern = "**.shtml$|**.shtm$";
  }
  if (opts.index_files == NULL) {
    opts.index_files = "index.html,index.htm,index.shtml,index.cgi,index.php";
  }
  /* Normalize path - resolve "." and ".." (in-place). */
  if (!FUNC6(&hm->uri, &hm->uri)) {
    FUNC4(nc, 400, NULL);
    return;
  }
  if (FUNC8(hm, &opts, &path, &path_info) == 0) {
    FUNC4(nc, 404, NULL);
    return;
  }
  FUNC7(nc, path, &path_info, hm, &opts);

  FUNC0(path);
  path = NULL;

  /* Close connection for non-keep-alive requests */
  if (FUNC9(&hm->proto, "HTTP/1.1") != 0 ||
      ((hdr = FUNC2(hm, "Connection")) != NULL &&
       FUNC9(hdr, "keep-alive") != 0)) {
#if 0
    nc->flags |= MG_F_SEND_AND_CLOSE;
#endif
  }
}