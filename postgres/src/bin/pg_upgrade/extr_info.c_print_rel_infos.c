
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nrels; TYPE_1__* rels; } ;
struct TYPE_4__ {int tablespace; int reloid; int relname; int nspname; } ;
typedef TYPE_2__ RelInfoArr ;


 int PG_VERBOSE ;
 int pg_log (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
print_rel_infos(RelInfoArr *rel_arr)
{
 int relnum;

 for (relnum = 0; relnum < rel_arr->nrels; relnum++)
  pg_log(PG_VERBOSE, "relname: %s.%s: reloid: %u reltblspace: %s\n",
      rel_arr->rels[relnum].nspname,
      rel_arr->rels[relnum].relname,
      rel_arr->rels[relnum].reloid,
      rel_arr->rels[relnum].tablespace);
}
