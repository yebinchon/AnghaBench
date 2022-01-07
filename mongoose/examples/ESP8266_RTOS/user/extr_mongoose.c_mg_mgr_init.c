
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr_init_opts {int dummy; } ;
struct mg_mgr {int dummy; } ;
typedef int opts ;


 int memset (struct mg_mgr_init_opts*,int ,int) ;
 int mg_mgr_init_opt (struct mg_mgr*,void*,struct mg_mgr_init_opts) ;

void mg_mgr_init(struct mg_mgr *m, void *user_data) {
  struct mg_mgr_init_opts opts;
  memset(&opts, 0, sizeof(opts));
  mg_mgr_init_opt(m, user_data, opts);
}
