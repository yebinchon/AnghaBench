
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ verbose; } ;
struct TYPE_4__ {int new_relfilenode; int old_relfilenode; int relname; int nspname; } ;
typedef TYPE_1__ FileNameMap ;


 int PG_VERBOSE ;
 TYPE_3__ log_opts ;
 int pg_log (int ,char*,...) ;

void
print_maps(FileNameMap *maps, int n_maps, const char *db_name)
{
 if (log_opts.verbose)
 {
  int mapnum;

  pg_log(PG_VERBOSE, "mappings for database \"%s\":\n", db_name);

  for (mapnum = 0; mapnum < n_maps; mapnum++)
   pg_log(PG_VERBOSE, "%s.%s: %u to %u\n",
       maps[mapnum].nspname, maps[mapnum].relname,
       maps[mapnum].old_relfilenode,
       maps[mapnum].new_relfilenode);

  pg_log(PG_VERBOSE, "\n\n");
 }
}
