
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ major_version; scalar_t__ bin_version; } ;
struct TYPE_3__ {scalar_t__ major_version; scalar_t__ bin_version; } ;


 int Assert (int) ;
 int GET_MAJOR_VERSION (scalar_t__) ;
 int PG_MAJORVERSION ;
 scalar_t__ PG_VERSION_NUM ;
 int check_ok () ;
 TYPE_2__ new_cluster ;
 TYPE_1__ old_cluster ;
 int pg_fatal (char*,...) ;
 int prep_status (char*) ;

void
check_cluster_versions(void)
{
 prep_status("Checking cluster versions");


 Assert(old_cluster.major_version != 0);
 Assert(new_cluster.major_version != 0);






 if (GET_MAJOR_VERSION(old_cluster.major_version) < 804)
  pg_fatal("This utility can only upgrade from PostgreSQL version 8.4 and later.\n");


 if (GET_MAJOR_VERSION(new_cluster.major_version) != GET_MAJOR_VERSION(PG_VERSION_NUM))
  pg_fatal("This utility can only upgrade to PostgreSQL version %s.\n",
     PG_MAJORVERSION);






 if (old_cluster.major_version > new_cluster.major_version)
  pg_fatal("This utility cannot be used to downgrade to older major PostgreSQL versions.\n");


 if (GET_MAJOR_VERSION(old_cluster.major_version) !=
  GET_MAJOR_VERSION(old_cluster.bin_version))
  pg_fatal("Old cluster data and binary directories are from different major versions.\n");
 if (GET_MAJOR_VERSION(new_cluster.major_version) !=
  GET_MAJOR_VERSION(new_cluster.bin_version))
  pg_fatal("New cluster data and binary directories are from different major versions.\n");

 check_ok();
}
