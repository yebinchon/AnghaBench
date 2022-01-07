
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_resolve_async_opts {int dummy; } ;
struct mg_mgr {int dummy; } ;
typedef int opts ;
typedef int mg_resolve_callback_t ;


 int memset (struct mg_resolve_async_opts*,int ,int) ;
 int mg_resolve_async_opt (struct mg_mgr*,char const*,int,int ,void*,struct mg_resolve_async_opts) ;

int mg_resolve_async(struct mg_mgr *mgr, const char *name, int query,
                     mg_resolve_callback_t cb, void *data) {
  struct mg_resolve_async_opts opts;
  memset(&opts, 0, sizeof(opts));
  return mg_resolve_async_opt(mgr, name, query, cb, data, opts);
}
