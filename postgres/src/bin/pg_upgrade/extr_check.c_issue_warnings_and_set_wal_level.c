
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major_version; } ;


 int GET_MAJOR_VERSION (int ) ;
 int new_9_0_populate_pg_largeobject_metadata (int *,int) ;
 int new_cluster ;
 int old_9_6_invalidate_hash_indexes (int *,int) ;
 TYPE_1__ old_cluster ;
 int start_postmaster (int *,int) ;
 int stop_postmaster (int) ;

void
issue_warnings_and_set_wal_level(void)
{






 start_postmaster(&new_cluster, 1);


 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 804)
  new_9_0_populate_pg_largeobject_metadata(&new_cluster, 0);


 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 906)
  old_9_6_invalidate_hash_indexes(&new_cluster, 0);

 stop_postmaster(0);
}
