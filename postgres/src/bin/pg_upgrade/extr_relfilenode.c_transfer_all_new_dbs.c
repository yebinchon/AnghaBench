
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int db_name; } ;
struct TYPE_7__ {int ndbs; TYPE_2__* dbs; } ;
typedef int FileNameMap ;
typedef TYPE_1__ DbInfoArr ;
typedef TYPE_2__ DbInfo ;


 int * gen_db_file_maps (TYPE_2__*,TYPE_2__*,int*,char*,char*) ;
 int pg_fatal (char*,int ) ;
 int pg_free (int *) ;
 int print_maps (int *,int,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int transfer_single_new_db (int *,int,char*) ;

void
transfer_all_new_dbs(DbInfoArr *old_db_arr, DbInfoArr *new_db_arr,
      char *old_pgdata, char *new_pgdata, char *old_tablespace)
{
 int old_dbnum,
    new_dbnum;


 for (old_dbnum = new_dbnum = 0;
   old_dbnum < old_db_arr->ndbs;
   old_dbnum++, new_dbnum++)
 {
  DbInfo *old_db = &old_db_arr->dbs[old_dbnum],
       *new_db = ((void*)0);
  FileNameMap *mappings;
  int n_maps;






  for (; new_dbnum < new_db_arr->ndbs; new_dbnum++)
  {
   new_db = &new_db_arr->dbs[new_dbnum];
   if (strcmp(old_db->db_name, new_db->db_name) == 0)
    break;
  }

  if (new_dbnum >= new_db_arr->ndbs)
   pg_fatal("old database \"%s\" not found in the new cluster\n",
      old_db->db_name);

  mappings = gen_db_file_maps(old_db, new_db, &n_maps, old_pgdata,
         new_pgdata);
  if (n_maps)
  {
   print_maps(mappings, n_maps, new_db->db_name);

   transfer_single_new_db(mappings, n_maps, old_tablespace);
  }

  pg_free(mappings);
 }

 return;
}
