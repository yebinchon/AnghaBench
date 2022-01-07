
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif_saddr_item {char* addr; int name; } ;
struct netif_saddr_data {int addrs; } ;
struct dstr {int array; int member_0; } ;


 char* bstrdup (char const*) ;
 int da_push_back (int ,struct netif_saddr_item*) ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_printf (struct dstr*,char*,char const*,char const*) ;

__attribute__((used)) static inline void netif_saddr_data_push_back(struct netif_saddr_data *sd,
           const char *ip,
           const char *adapter)
{
 struct netif_saddr_item item;
 struct dstr full_name = {0};
 char *ip_dup = bstrdup(ip);

 if (adapter && *adapter)
  dstr_printf(&full_name, "[%s] %s", adapter, ip);
 else
  dstr_copy(&full_name, ip);

 item.name = full_name.array;
 item.addr = ip_dup;

 da_push_back(sd->addrs, &item);
}
