
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;


 int crawl_page (struct mg_mgr*,int ,int ,int ) ;
 int initial_url ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;

int main(void) {
  struct mg_mgr mgr;

  mg_mgr_init(&mgr, ((void*)0));
  crawl_page(&mgr, initial_url, ~0, 0);

  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }

  mg_mgr_free(&mgr);

  return 0;
}
