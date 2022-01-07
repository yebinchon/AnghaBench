
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr_init_opts {char* nameserver; } ;
struct mg_mgr {int dummy; } ;
typedef int opts ;


 int ASSERT_EQ (int,int) ;
 int MG_DNS_A_RECORD ;
 int c_int_ne ;
 int dns_resolve_cb ;
 int memset (struct mg_mgr_init_opts*,int ,int) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_init_opt (struct mg_mgr*,int *,struct mg_mgr_init_opts) ;
 int mg_resolve_async (struct mg_mgr*,char*,int ,int ,int*) ;
 int mg_set_nameserver (struct mg_mgr*,char*) ;
 int poll_until (struct mg_mgr*,int,int ,int*,void*) ;

__attribute__((used)) static const char *test_dns_resolve(void) {
  struct mg_mgr mgr;
  struct mg_mgr_init_opts opts;

  int data = 0;

  mg_mgr_init(&mgr, ((void*)0));


  mg_resolve_async(&mgr, "dns.msftncsi.com", MG_DNS_A_RECORD, dns_resolve_cb,
                   &data);

  poll_until(&mgr, 1, c_int_ne, &data, (void *) 0);
  ASSERT_EQ(data, 1);

  mg_mgr_free(&mgr);

  data = 0;
  memset(&opts, 0, sizeof(opts));
  opts.nameserver = "8.8.4.4";
  mg_mgr_init_opt(&mgr, ((void*)0), opts);


  mg_resolve_async(&mgr, "dns.msftncsi.com", MG_DNS_A_RECORD, dns_resolve_cb,
                   &data);

  poll_until(&mgr, 1, c_int_ne, &data, (void *) 0);
  ASSERT_EQ(data, 1);

  mg_mgr_free(&mgr);

  data = 0;
  mg_mgr_init(&mgr, ((void*)0));
  mg_set_nameserver(&mgr, "8.8.4.4");


  mg_resolve_async(&mgr, "dns.msftncsi.com", MG_DNS_A_RECORD, dns_resolve_cb,
                   &data);

  poll_until(&mgr, 1, c_int_ne, &data, (void *) 0);
  ASSERT_EQ(data, 1);

  mg_mgr_free(&mgr);

  return ((void*)0);
}
