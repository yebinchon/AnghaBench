
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_12__ {TYPE_2__ dbarr; } ;
struct TYPE_8__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_11__ {TYPE_1__ dbarr; } ;
struct TYPE_10__ {int db_name; } ;
typedef TYPE_3__ DbInfo ;


 int check_locale_and_encoding (TYPE_3__*,TYPE_3__*) ;
 TYPE_5__ new_cluster ;
 TYPE_4__ old_cluster ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
check_databases_are_compatible(void)
{
 int newdbnum;
 int olddbnum;
 DbInfo *newdbinfo;
 DbInfo *olddbinfo;

 for (newdbnum = 0; newdbnum < new_cluster.dbarr.ndbs; newdbnum++)
 {
  newdbinfo = &new_cluster.dbarr.dbs[newdbnum];


  for (olddbnum = 0; olddbnum < old_cluster.dbarr.ndbs; olddbnum++)
  {
   olddbinfo = &old_cluster.dbarr.dbs[olddbnum];
   if (strcmp(newdbinfo->db_name, olddbinfo->db_name) == 0)
   {
    check_locale_and_encoding(olddbinfo, newdbinfo);
    break;
   }
  }
 }
}
