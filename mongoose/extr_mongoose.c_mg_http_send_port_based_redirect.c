
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_str {int p; scalar_t__ len; } ;
struct mg_serve_http_opts {char* url_rewrites; } ;
struct mg_connection {int dummy; } ;
struct TYPE_4__ {int p; } ;
struct TYPE_3__ {int p; } ;
struct http_message {TYPE_2__ uri; TYPE_1__ proto; } ;
typedef int local_port ;


 int MG_SOCK_STRINGIFY_PORT ;
 int mg_conn_addr_to_str (struct mg_connection*,char*,int,int ) ;
 char* mg_next_comma_list_entry (char const*,struct mg_str*,struct mg_str*) ;
 int mg_printf (struct mg_connection*,char*,int,int ,int,int) ;
 int mg_send_response_line (struct mg_connection*,int,int *) ;
 scalar_t__ mg_vcmp (struct mg_str*,char*) ;

__attribute__((used)) static int mg_http_send_port_based_redirect(
    struct mg_connection *c, struct http_message *hm,
    const struct mg_serve_http_opts *opts) {
  const char *rewrites = opts->url_rewrites;
  struct mg_str a, b;
  char local_port[20] = {'%'};

  mg_conn_addr_to_str(c, local_port + 1, sizeof(local_port) - 1,
                      MG_SOCK_STRINGIFY_PORT);

  while ((rewrites = mg_next_comma_list_entry(rewrites, &a, &b)) != ((void*)0)) {
    if (mg_vcmp(&a, local_port) == 0) {
      mg_send_response_line(c, 301, ((void*)0));
      mg_printf(c, "Content-Length: 0\r\nLocation: %.*s%.*s\r\n\r\n",
                (int) b.len, b.p, (int) (hm->proto.p - hm->uri.p - 1),
                hm->uri.p);
      return 1;
    }
  }

  return 0;
}
