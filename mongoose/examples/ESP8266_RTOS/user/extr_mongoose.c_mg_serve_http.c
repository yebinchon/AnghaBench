
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mg_str {int dummy; } ;
struct mg_serve_http_opts {char* document_root; char* per_directory_auth_file; char* enable_directory_listing; char* cgi_file_pattern; char* ssi_pattern; char* index_files; int ip_acl; } ;
struct TYPE_3__ {int sin_addr; } ;
struct TYPE_4__ {TYPE_1__ sin; } ;
struct mg_connection {int flags; TYPE_2__ sa; } ;
struct http_message {struct mg_str proto; int uri; } ;


 int MG_FREE (char*) ;
 int MG_F_SEND_AND_CLOSE ;
 int mg_check_ip_acl (int ,int ) ;
 struct mg_str* mg_get_http_header (struct http_message*,char*) ;
 scalar_t__ mg_http_handle_forwarding (struct mg_connection*,struct http_message*,struct mg_serve_http_opts*) ;
 int mg_http_send_error (struct mg_connection*,int,int *) ;
 scalar_t__ mg_http_send_port_based_redirect (struct mg_connection*,struct http_message*,struct mg_serve_http_opts*) ;
 int mg_normalize_uri_path (int *,int *) ;
 int mg_send_http_file (struct mg_connection*,char*,struct mg_str*,struct http_message*,struct mg_serve_http_opts*) ;
 scalar_t__ mg_uri_to_local_path (struct http_message*,struct mg_serve_http_opts*,char**,struct mg_str*) ;
 scalar_t__ mg_vcmp (struct mg_str*,char*) ;
 int ntohl (int ) ;

void mg_serve_http(struct mg_connection *nc, struct http_message *hm,
                   struct mg_serve_http_opts opts) {
  char *path = ((void*)0);
  struct mg_str *hdr, path_info;
  uint32_t remote_ip = ntohl(*(uint32_t *) &nc->sa.sin.sin_addr);

  if (mg_check_ip_acl(opts.ip_acl, remote_ip) != 1) {

    mg_http_send_error(nc, 403, ((void*)0));
    nc->flags |= MG_F_SEND_AND_CLOSE;
    return;
  }
  if (opts.document_root == ((void*)0)) {
    opts.document_root = ".";
  }
  if (opts.per_directory_auth_file == ((void*)0)) {
    opts.per_directory_auth_file = ".htpasswd";
  }
  if (opts.enable_directory_listing == ((void*)0)) {
    opts.enable_directory_listing = "yes";
  }
  if (opts.cgi_file_pattern == ((void*)0)) {
    opts.cgi_file_pattern = "**.cgi$|**.php$";
  }
  if (opts.ssi_pattern == ((void*)0)) {
    opts.ssi_pattern = "**.shtml$|**.shtm$";
  }
  if (opts.index_files == ((void*)0)) {
    opts.index_files = "index.html,index.htm,index.shtml,index.cgi,index.php";
  }

  if (!mg_normalize_uri_path(&hm->uri, &hm->uri)) {
    mg_http_send_error(nc, 400, ((void*)0));
    return;
  }
  if (mg_uri_to_local_path(hm, &opts, &path, &path_info) == 0) {
    mg_http_send_error(nc, 404, ((void*)0));
    return;
  }
  mg_send_http_file(nc, path, &path_info, hm, &opts);

  MG_FREE(path);
  path = ((void*)0);


  if (mg_vcmp(&hm->proto, "HTTP/1.1") != 0 ||
      ((hdr = mg_get_http_header(hm, "Connection")) != ((void*)0) &&
       mg_vcmp(hdr, "keep-alive") != 0)) {



  }
}
