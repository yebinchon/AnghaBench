
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ndbs; TYPE_1__* dbs; } ;
struct TYPE_10__ {TYPE_3__ dbarr; } ;
struct TYPE_9__ {int nrels; TYPE_2__* rels; } ;
struct TYPE_7__ {int relname; int nspname; } ;
struct TYPE_6__ {int db_name; TYPE_4__ rel_arr; } ;
typedef TYPE_4__ RelInfoArr ;


 TYPE_5__ new_cluster ;
 int pg_fatal (char*,int ,int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
check_new_cluster_is_empty(void)
{
 int dbnum;

 for (dbnum = 0; dbnum < new_cluster.dbarr.ndbs; dbnum++)
 {
  int relnum;
  RelInfoArr *rel_arr = &new_cluster.dbarr.dbs[dbnum].rel_arr;

  for (relnum = 0; relnum < rel_arr->nrels;
    relnum++)
  {

   if (strcmp(rel_arr->rels[relnum].nspname, "pg_catalog") != 0)
    pg_fatal("New cluster database \"%s\" is not empty: found relation \"%s.%s\"\n",
       new_cluster.dbarr.dbs[dbnum].db_name,
       rel_arr->rels[relnum].nspname,
       rel_arr->rels[relnum].relname);
  }
 }
}
