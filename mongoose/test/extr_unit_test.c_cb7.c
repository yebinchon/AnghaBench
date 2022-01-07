
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct mg_connection {TYPE_2__ recv_mbuf; int flags; scalar_t__ user_data; } ;
struct TYPE_3__ {size_t len; int p; } ;
struct http_message {TYPE_1__ body; } ;


 int DBG (char*) ;
 int LL_INFO ;
 int LOG (int ,char*) ;
 int MG_EV_HTTP_REPLY ;
 int MG_EV_RECV ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int free (char*) ;
 int g_argv_0 ;
 scalar_t__ memcmp (int ,char*,size_t) ;
 char* read_file (int ,size_t*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void cb7(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  size_t size;
  char *data, *user_data = (char *) nc->user_data;

  if (ev == MG_EV_HTTP_REPLY) {

    data = read_file(g_argv_0, &size);
    DBG(("file %s, size %d; got %d", g_argv_0, (int) size, (int) hm->body.len));
    if (data != ((void*)0) && size == hm->body.len &&
        memcmp(hm->body.p, data, size) == 0) {
      strcpy(user_data, "success");
    } else {
      strcpy(user_data, "fail");
    }
    free(data);
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  } else if (ev == MG_EV_RECV) {



  }
}
