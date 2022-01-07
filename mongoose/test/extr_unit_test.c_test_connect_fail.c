
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {char* user_data; } ;


 int ASSERT (int) ;
 int c_str_ne ;
 int cb5 ;
 struct mg_connection* mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int poll_until (struct mg_mgr*,int,int ,char*,void*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static const char *test_connect_fail(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  char buf[100] = "0";

  mg_mgr_init(&mgr, ((void*)0));
  ASSERT((nc = mg_connect(&mgr, "127.0.0.1:33211", cb5)) != ((void*)0));
  nc->user_data = buf;
  poll_until(&mgr, 1, c_str_ne, buf, (void *) "0");
  mg_mgr_free(&mgr);




  ASSERT(strcmp(buf, "0") != 0);


  return ((void*)0);
}
