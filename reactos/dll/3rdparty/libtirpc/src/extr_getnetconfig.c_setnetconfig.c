
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netconfig_vars {int nc_configs; scalar_t__ flag; int valid; } ;
struct TYPE_2__ {int ref; int head; } ;


 int NC_NONETCONFIG ;
 int NC_VALID ;
 int NETCONFIG ;
 int * fopen (int ,char*) ;
 int free (struct netconfig_vars*) ;
 scalar_t__ malloc (int) ;
 int nc_error ;
 int * nc_file ;
 TYPE_1__ ni ;

void *
setnetconfig()
{
    struct netconfig_vars *nc_vars;

    if ((nc_vars = (struct netconfig_vars *)malloc(sizeof
  (struct netconfig_vars))) == ((void*)0)) {
  return(((void*)0));
    }





    ni.ref++;
    if ((nc_file != ((void*)0)) || (nc_file = fopen(NETCONFIG, "r")) != ((void*)0)) {
  nc_vars->valid = NC_VALID;
  nc_vars->flag = 0;
  nc_vars->nc_configs = ni.head;
  return ((void *)nc_vars);
    }
    ni.ref--;
    nc_error = NC_NONETCONFIG;
    free(nc_vars);
    return (((void*)0));
}
