
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bytea ;
typedef int TupleDesc ;
struct TYPE_4__ {scalar_t__ relkind; } ;
struct TYPE_3__ {int autovacuum; } ;
typedef TYPE_1__ StdRdOptions ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_class ;
typedef int AutoVacOpts ;


 int Assert (int) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_TOASTVALUE ;
 int * extractRelOptions (int ,int ,int *) ;
 int memcpy (int *,int *,int) ;
 int * palloc (int) ;
 int pfree (int *) ;

__attribute__((used)) static AutoVacOpts *
extract_autovac_opts(HeapTuple tup, TupleDesc pg_class_desc)
{
 bytea *relopts;
 AutoVacOpts *av;

 Assert(((Form_pg_class) GETSTRUCT(tup))->relkind == RELKIND_RELATION ||
     ((Form_pg_class) GETSTRUCT(tup))->relkind == RELKIND_MATVIEW ||
     ((Form_pg_class) GETSTRUCT(tup))->relkind == RELKIND_TOASTVALUE);

 relopts = extractRelOptions(tup, pg_class_desc, ((void*)0));
 if (relopts == ((void*)0))
  return ((void*)0);

 av = palloc(sizeof(AutoVacOpts));
 memcpy(av, &(((StdRdOptions *) relopts)->autovacuum), sizeof(AutoVacOpts));
 pfree(relopts);

 return av;
}
