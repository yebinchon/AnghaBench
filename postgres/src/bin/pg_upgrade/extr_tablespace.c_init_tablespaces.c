
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num_old_tablespaces; } ;
struct TYPE_5__ {int tablespace_suffix; } ;


 int get_tablespace_paths () ;
 TYPE_1__ new_cluster ;
 TYPE_1__ old_cluster ;
 TYPE_2__ os_info ;
 int pg_fatal (char*) ;
 int set_tablespace_directory_suffix (TYPE_1__*) ;
 scalar_t__ strcmp (int ,int ) ;

void
init_tablespaces(void)
{
 get_tablespace_paths();

 set_tablespace_directory_suffix(&old_cluster);
 set_tablespace_directory_suffix(&new_cluster);

 if (os_info.num_old_tablespaces > 0 &&
  strcmp(old_cluster.tablespace_suffix, new_cluster.tablespace_suffix) == 0)
  pg_fatal("Cannot upgrade to/from the same system catalog version when\n"
     "using tablespaces.\n");
}
