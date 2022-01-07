
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct userdata {char* url; int depth; } ;
struct slre_cap {int len; int ptr; } ;
struct mg_connection {int mgr; scalar_t__ user_data; } ;
struct TYPE_2__ {char* p; } ;
struct http_message {TYPE_1__ body; } ;


 int SLRE_IGNORE_CASE ;
 int crawl_page (int ,int ,int ,scalar_t__) ;
 scalar_t__ max_depth ;
 int printf (char*,char*,int) ;
 int regex ;
 int slre_match (int ,char const*,int,struct slre_cap*,int,int ) ;
 int strlen (char const*) ;

void handle_reply(struct mg_connection *nc, struct http_message *hm) {
  struct userdata *ud = (struct userdata *) nc->user_data;
  const char *body = hm->body.p;

  int offset, max_matches = 2, cursor = 0, str_len = strlen(body);
  struct slre_cap caps[max_matches];

  printf("Loaded url: %s at depth %d\n", ud->url, ud->depth);
  if (ud->depth == max_depth) {
    return;
  }

  while (cursor < str_len &&
         (offset = slre_match(regex, body + cursor, str_len - cursor, caps,
                              max_matches, SLRE_IGNORE_CASE)) > 0) {
    crawl_page(nc->mgr, caps[0].ptr, caps[0].len, ud->depth + 1);
    cursor += offset;
  }
}
