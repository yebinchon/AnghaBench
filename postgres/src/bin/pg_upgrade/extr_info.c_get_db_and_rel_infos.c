
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ verbose; } ;
struct TYPE_10__ {int ndbs; int * dbs; } ;
struct TYPE_9__ {TYPE_2__ dbarr; } ;
typedef TYPE_1__ ClusterInfo ;


 int PG_VERBOSE ;
 int free_db_and_rel_infos (TYPE_2__*) ;
 int get_db_infos (TYPE_1__*) ;
 int get_rel_infos (TYPE_1__*,int *) ;
 TYPE_4__ log_opts ;
 TYPE_1__ old_cluster ;
 int pg_log (int ,char*) ;
 int print_db_infos (TYPE_2__*) ;

void
get_db_and_rel_infos(ClusterInfo *cluster)
{
 int dbnum;

 if (cluster->dbarr.dbs != ((void*)0))
  free_db_and_rel_infos(&cluster->dbarr);

 get_db_infos(cluster);

 for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
  get_rel_infos(cluster, &cluster->dbarr.dbs[dbnum]);

 if (cluster == &old_cluster)
  pg_log(PG_VERBOSE, "\nsource databases:\n");
 else
  pg_log(PG_VERBOSE, "\ntarget databases:\n");

 if (log_opts.verbose)
  print_db_infos(&cluster->dbarr);
}
