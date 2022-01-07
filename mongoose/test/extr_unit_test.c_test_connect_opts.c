
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {void* user_data; int flags; } ;
struct mg_connect_opts {int flags; void* user_data; } ;
typedef int opts ;


 int ASSERT (int) ;
 int MG_F_USER_6 ;
 int MG_F_WANT_READ ;
 int cb6 ;
 int memset (struct mg_connect_opts*,int ,int) ;
 struct mg_connection* mg_connect_opt (struct mg_mgr*,char*,int ,struct mg_connect_opts) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;

__attribute__((used)) static const char *test_connect_opts(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  struct mg_connect_opts opts;

  memset(&opts, 0, sizeof(opts));
  opts.user_data = (void *) 0xdeadbeef;
  opts.flags = MG_F_USER_6;
  opts.flags |= MG_F_WANT_READ;

  mg_mgr_init(&mgr, ((void*)0));
  ASSERT((nc = mg_connect_opt(&mgr, "127.0.0.1:33211", cb6, opts)) != ((void*)0));
  ASSERT(nc->user_data == (void *) 0xdeadbeef);
  ASSERT(nc->flags & MG_F_USER_6);
  ASSERT(!(nc->flags & MG_F_WANT_READ));






  mg_mgr_free(&mgr);
  return ((void*)0);
}
