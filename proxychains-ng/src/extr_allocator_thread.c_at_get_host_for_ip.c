
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_msghdr {scalar_t__ msgtype; int datalen; } ;
typedef int ptrdiff_t ;
typedef int ip_type4 ;


 int ATD_CLIENT ;
 int ATD_SERVER ;
 scalar_t__ ATM_GETNAME ;
 int MUTEX_LOCK (int ) ;
 int MUTEX_UNLOCK (int ) ;
 int assert (int) ;
 scalar_t__ getmessage (int ,struct at_msghdr*,char*) ;
 int internal_ips_lock ;
 scalar_t__ sendmessage (int ,struct at_msghdr*,int *) ;

size_t at_get_host_for_ip(ip_type4 ip, char* readbuf) {
 struct at_msghdr msg = {.msgtype = ATM_GETNAME, .datalen = sizeof(ip_type4) };
 size_t res = 0;
 MUTEX_LOCK(internal_ips_lock);
 if(sendmessage(ATD_SERVER, &msg, &ip) && getmessage(ATD_CLIENT, &msg, readbuf)) {
  if((ptrdiff_t) msg.datalen <= 0) res = 0;
  else res = msg.datalen - 1;
 }
 assert(msg.msgtype == ATM_GETNAME);
 MUTEX_UNLOCK(internal_ips_lock);
 return res;
}
