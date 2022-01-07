
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {char* tablespace_suffix; } ;
struct TYPE_14__ {char* tablespace_suffix; } ;
struct TYPE_13__ {int db_oid; } ;
struct TYPE_12__ {char const* old_tablespace; char* old_tablespace_suffix; char const* new_tablespace; char* new_tablespace_suffix; int relname; int nspname; int new_relfilenode; int old_relfilenode; int new_db_oid; int old_db_oid; } ;
struct TYPE_11__ {char const* tablespace; int relname; int nspname; int relfilenode; } ;
typedef TYPE_1__ RelInfo ;
typedef TYPE_2__ FileNameMap ;
typedef TYPE_3__ DbInfo ;


 TYPE_5__ new_cluster ;
 TYPE_4__ old_cluster ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
create_rel_filename_map(const char *old_data, const char *new_data,
      const DbInfo *old_db, const DbInfo *new_db,
      const RelInfo *old_rel, const RelInfo *new_rel,
      FileNameMap *map)
{

 if (strlen(old_rel->tablespace) == 0)
 {




  map->old_tablespace = old_data;
  map->old_tablespace_suffix = "/base";
 }
 else
 {

  map->old_tablespace = old_rel->tablespace;
  map->old_tablespace_suffix = old_cluster.tablespace_suffix;
 }


 if (strlen(new_rel->tablespace) == 0)
 {
  map->new_tablespace = new_data;
  map->new_tablespace_suffix = "/base";
 }
 else
 {
  map->new_tablespace = new_rel->tablespace;
  map->new_tablespace_suffix = new_cluster.tablespace_suffix;
 }

 map->old_db_oid = old_db->db_oid;
 map->new_db_oid = new_db->db_oid;





 map->old_relfilenode = old_rel->relfilenode;


 map->new_relfilenode = new_rel->relfilenode;


 map->nspname = old_rel->nspname;
 map->relname = old_rel->relname;
}
