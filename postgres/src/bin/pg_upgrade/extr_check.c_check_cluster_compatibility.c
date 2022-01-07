
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ port; int major_version; int controldata; } ;


 scalar_t__ DEF_PGUPORT ;
 int GET_MAJOR_VERSION (int ) ;
 int check_control_data (int *,int *) ;
 int get_control_data (TYPE_1__*,int) ;
 TYPE_1__ new_cluster ;
 TYPE_1__ old_cluster ;
 int pg_fatal (char*) ;

void
check_cluster_compatibility(bool live_check)
{

 get_control_data(&old_cluster, live_check);
 get_control_data(&new_cluster, 0);
 check_control_data(&old_cluster.controldata, &new_cluster.controldata);


 if (live_check && GET_MAJOR_VERSION(old_cluster.major_version) < 901 &&
  old_cluster.port == DEF_PGUPORT)
  pg_fatal("When checking a pre-PG 9.1 live old server, "
     "you must specify the old server's port number.\n");

 if (live_check && old_cluster.port == new_cluster.port)
  pg_fatal("When checking a live server, "
     "the old and new port numbers must be different.\n");
}
