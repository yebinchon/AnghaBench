
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct hostent {char** h_addr_list; char** h_aliases; int h_length; int h_addrtype; } ;
struct gethostbyname_data {char** resolved_addr_p; scalar_t__ resolved_addr; struct hostent hostent_space; } ;
struct TYPE_14__ {scalar_t__ as_int; } ;
typedef TYPE_5__ ip_type4 ;
typedef scalar_t__ in_addr_t ;
typedef int buff ;
struct TYPE_17__ {scalar_t__ as_int; } ;
struct TYPE_12__ {scalar_t__ as_int; } ;
struct TYPE_13__ {TYPE_3__ v4; } ;
struct TYPE_16__ {TYPE_4__ addr; } ;
struct TYPE_10__ {scalar_t__ as_int; } ;
struct TYPE_11__ {TYPE_1__ v4; } ;
struct TYPE_15__ {TYPE_2__ addr; } ;


 int AF_INET ;
 int PDEBUG (char*) ;
 int PFUNC () ;
 TYPE_9__ at_get_ip_for_host (char*,int ) ;
 int gethostbyname_data_setstring (struct gethostbyname_data*,char*) ;
 int gethostname (char*,int) ;
 TYPE_5__ hostsreader_get_numeric_ip_for_name (char const*) ;
 scalar_t__ inet_addr (char*) ;
 TYPE_7__ ip_type_invalid ;
 TYPE_6__ ip_type_localhost ;
 int strcmp (char*,char const*) ;
 int strlen (char const*) ;

struct hostent *proxy_gethostbyname(const char *name, struct gethostbyname_data* data) {
 PFUNC();
 char buff[256];

 data->resolved_addr_p[0] = (char *) &data->resolved_addr;
 data->resolved_addr_p[1] = ((void*)0);

 data->hostent_space.h_addr_list = data->resolved_addr_p;

 data->hostent_space.h_aliases = &data->resolved_addr_p[1];

 data->resolved_addr = 0;
 data->hostent_space.h_addrtype = AF_INET;
 data->hostent_space.h_length = sizeof(in_addr_t);

 gethostname(buff, sizeof(buff));

 if(!strcmp(buff, name)) {
  data->resolved_addr = inet_addr(buff);
  if(data->resolved_addr == (in_addr_t) (-1))
   data->resolved_addr = (in_addr_t) (ip_type_localhost.addr.v4.as_int);
  goto retname;
 }


 ip_type4 hdb_res = hostsreader_get_numeric_ip_for_name(name);
 if(hdb_res.as_int != ip_type_invalid.addr.v4.as_int) {
  data->resolved_addr = hdb_res.as_int;
  goto retname;
 }

 data->resolved_addr = at_get_ip_for_host((char*) name, strlen(name)).as_int;
 if(data->resolved_addr == (in_addr_t) ip_type_invalid.addr.v4.as_int) return ((void*)0);

 retname:

 gethostbyname_data_setstring(data, (char*) name);

 PDEBUG("return hostent space\n");

 return &data->hostent_space;
}
