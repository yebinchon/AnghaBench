
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int major_version; } ;
struct TYPE_13__ {int nrels; TYPE_2__* rels; } ;
struct TYPE_15__ {int db_name; TYPE_1__ rel_arr; } ;
struct TYPE_14__ {char* nspname; scalar_t__ reloid; char* relname; } ;
typedef TYPE_2__ RelInfo ;
typedef int FileNameMap ;
typedef TYPE_3__ DbInfo ;


 int GET_MAJOR_VERSION (int ) ;
 int PG_WARNING ;
 int create_rel_filename_map (char const*,char const*,TYPE_3__*,TYPE_3__*,TYPE_2__*,TYPE_2__*,int *) ;
 TYPE_6__ old_cluster ;
 int pg_fatal (char*,int ) ;
 int pg_log (int ,char*,scalar_t__,int ,char*,char*,char*,char*) ;
 scalar_t__ pg_malloc (int) ;
 int report_unmatched_relation (TYPE_2__*,TYPE_3__*,int) ;
 scalar_t__ strcmp (char*,char*) ;

FileNameMap *
gen_db_file_maps(DbInfo *old_db, DbInfo *new_db,
     int *nmaps,
     const char *old_pgdata, const char *new_pgdata)
{
 FileNameMap *maps;
 int old_relnum,
    new_relnum;
 int num_maps = 0;
 bool all_matched = 1;


 maps = (FileNameMap *) pg_malloc(sizeof(FileNameMap) *
          old_db->rel_arr.nrels);






 old_relnum = new_relnum = 0;
 while (old_relnum < old_db->rel_arr.nrels ||
     new_relnum < new_db->rel_arr.nrels)
 {
  RelInfo *old_rel = (old_relnum < old_db->rel_arr.nrels) ?
  &old_db->rel_arr.rels[old_relnum] : ((void*)0);
  RelInfo *new_rel = (new_relnum < new_db->rel_arr.nrels) ?
  &new_db->rel_arr.rels[new_relnum] : ((void*)0);


  if (!new_rel)
  {




   report_unmatched_relation(old_rel, old_db, 0);
   all_matched = 0;
   old_relnum++;
   continue;
  }
  if (!old_rel)
  {






   if (strcmp(new_rel->nspname, "pg_toast") != 0)
   {
    report_unmatched_relation(new_rel, new_db, 1);
    all_matched = 0;
   }
   new_relnum++;
   continue;
  }


  if (old_rel->reloid < new_rel->reloid)
  {

   report_unmatched_relation(old_rel, old_db, 0);
   all_matched = 0;
   old_relnum++;
   continue;
  }
  else if (old_rel->reloid > new_rel->reloid)
  {

   if (strcmp(new_rel->nspname, "pg_toast") != 0)
   {
    report_unmatched_relation(new_rel, new_db, 1);
    all_matched = 0;
   }
   new_relnum++;
   continue;
  }
  if (strcmp(old_rel->nspname, new_rel->nspname) != 0 ||
   (strcmp(old_rel->relname, new_rel->relname) != 0 &&
    (GET_MAJOR_VERSION(old_cluster.major_version) >= 900 ||
     strcmp(old_rel->nspname, "pg_toast") != 0)))
  {
   pg_log(PG_WARNING, "Relation names for OID %u in database \"%s\" do not match: "
       "old name \"%s.%s\", new name \"%s.%s\"\n",
       old_rel->reloid, old_db->db_name,
       old_rel->nspname, old_rel->relname,
       new_rel->nspname, new_rel->relname);
   all_matched = 0;
   old_relnum++;
   new_relnum++;
   continue;
  }


  create_rel_filename_map(old_pgdata, new_pgdata, old_db, new_db,
        old_rel, new_rel, maps + num_maps);
  num_maps++;
  old_relnum++;
  new_relnum++;
 }

 if (!all_matched)
  pg_fatal("Failed to match up old and new tables in database \"%s\"\n",
     old_db->db_name);

 *nmaps = num_maps;
 return maps;
}
