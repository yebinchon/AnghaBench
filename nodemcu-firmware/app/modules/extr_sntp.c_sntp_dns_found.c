
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ip_addr_t ;


 int SNTP_DOLOOKUPS_ID ;
 size_t server_count ;
 int * serverp ;
 int sntp_dbg (char*) ;
 int task_post_low (int ,int ) ;
 int tasknumber ;

__attribute__((used)) static void sntp_dns_found(const char *name, ip_addr_t *ipaddr, void *arg)
{
  (void)arg;

  if (ipaddr == ((void*)0))
  {
    sntp_dbg("DNS Fail!\n");
  }
  else
  {
    serverp[server_count] = *ipaddr;
    server_count++;
  }
  task_post_low(tasknumber, SNTP_DOLOOKUPS_ID);
}
