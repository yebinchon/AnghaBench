
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_serve_http_opts {int extra_headers; int ssi_pattern; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;


 int mg_get_mime_type (char const*,char*,struct mg_serve_http_opts*) ;
 int mg_handle_ssi_request (struct mg_connection*,struct http_message*,char const*,struct mg_serve_http_opts*) ;
 int mg_http_serve_file (struct mg_connection*,struct http_message*,char const*,int ,int ) ;
 scalar_t__ mg_match_prefix (int ,int ,char const*) ;
 int mg_mk_str (int ) ;
 int strlen (int ) ;

__attribute__((used)) static void mg_http_serve_file2(struct mg_connection *nc, const char *path,
                                struct http_message *hm,
                                struct mg_serve_http_opts *opts) {






  mg_http_serve_file(nc, hm, path, mg_get_mime_type(path, "text/plain", opts),
                     mg_mk_str(opts->extra_headers));
}
