
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_resolve_async_opts {char* nameserver; int timeout; int max_retries; } ;
struct mg_mgr {int dummy; } ;
typedef int opts ;


 int ASSERT_EQ (int,int) ;
 int MG_DNS_A_RECORD ;
 int c_int_eq ;
 int dns_resolve_timeout_cb ;
 int memset (struct mg_resolve_async_opts*,int ,int) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_resolve_async_opt (struct mg_mgr*,char*,int ,int ,int*,struct mg_resolve_async_opts) ;
 int poll_until (struct mg_mgr*,int,int ,int*,void*) ;

__attribute__((used)) static const char *test_dns_resolve_timeout(void) {
  struct mg_mgr mgr;
  struct mg_resolve_async_opts opts;
  int data = 0;
  mg_mgr_init(&mgr, ((void*)0));
  memset(&opts, 0, sizeof(opts));

  opts.nameserver = "7.7.7.7";
  opts.timeout = -1;
  opts.max_retries = 1;
  mg_resolve_async_opt(&mgr, "www.cesanta.com", MG_DNS_A_RECORD,
                       dns_resolve_timeout_cb, &data, opts);

  poll_until(&mgr, 5, c_int_eq, &data, (void *) 1);
  ASSERT_EQ(data, 1);

  mg_mgr_free(&mgr);
  return ((void*)0);
}
