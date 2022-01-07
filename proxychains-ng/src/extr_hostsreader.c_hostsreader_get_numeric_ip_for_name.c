
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
struct TYPE_6__ {int octet; } ;
typedef TYPE_2__ ip_type4 ;
struct TYPE_5__ {TYPE_2__ v4; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;


 char* hostsreader_get_ip_for_name (char const*,char*,int) ;
 int inet_aton (char*,struct in_addr*) ;
 TYPE_3__ ip_type_invalid ;
 int memcpy (int ,int *,int) ;

ip_type4 hostsreader_get_numeric_ip_for_name(const char* name) {
 char *hres;
 char buf[320];
 if((hres = hostsreader_get_ip_for_name(name, buf, sizeof buf))) {
  struct in_addr c;
  inet_aton(hres, &c);
  ip_type4 res;
  memcpy(res.octet, &c.s_addr, 4);
  return res;
 } else return ip_type_invalid.addr.v4;
}
