
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int inet ;


 int ERRCODE_INVALID_BINARY_REPRESENTATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int ip_addr (int *) ;
 int ip_bits (int *) ;
 int ip_family (int *) ;
 char* pg_inet_net_ntop (int ,int ,int,char*,int) ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,int) ;
 int * strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
network_out(inet *src, bool is_cidr)
{
 char tmp[sizeof("xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:255.255.255.255/128")];
 char *dst;
 int len;

 dst = pg_inet_net_ntop(ip_family(src), ip_addr(src), ip_bits(src),
         tmp, sizeof(tmp));
 if (dst == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_BINARY_REPRESENTATION),
     errmsg("could not format inet value: %m")));


 if (is_cidr && strchr(tmp, '/') == ((void*)0))
 {
  len = strlen(tmp);
  snprintf(tmp + len, sizeof(tmp) - len, "/%u", ip_bits(src));
 }

 return pstrdup(tmp);
}
