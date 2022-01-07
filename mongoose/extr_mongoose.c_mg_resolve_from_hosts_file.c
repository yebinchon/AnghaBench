
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union socket_address {TYPE_2__ sin; } ;
typedef int line ;
typedef int FILE ;


 int MG_HOSTS_FILE_NAME ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int htonl (unsigned int) ;
 int * mg_fopen (int ,char*) ;
 int sscanf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char const*) ;

int mg_resolve_from_hosts_file(const char *name, union socket_address *usa) {
  (void) name;
  (void) usa;


  return -1;
}
