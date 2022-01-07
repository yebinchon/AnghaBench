
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef int old_file ;
typedef int new_file ;
typedef int extent_suffix ;
struct TYPE_5__ {int transfer_mode; } ;
struct TYPE_4__ {char* old_tablespace; int old_tablespace_suffix; int old_db_oid; char* old_relfilenode; char* new_tablespace; int new_tablespace_suffix; int new_db_oid; char* new_relfilenode; int relname; int nspname; } ;
typedef TYPE_1__ FileNameMap ;


 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 int PG_STATUS ;
 int PG_VERBOSE ;



 int cloneFile (char*,char*,int ,int ) ;
 int copyFile (char*,char*,int ,int ) ;
 scalar_t__ errno ;
 int linkFile (char*,char*,int ,int ) ;
 int pg_fatal (char*,int ,int ,char*,char*,int ) ;
 int pg_log (int ,char*,char*,...) ;
 int rewriteVisibilityMap (char*,char*,int ,int ) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strerror (scalar_t__) ;
 int unlink (char*) ;
 TYPE_2__ user_opts ;

__attribute__((used)) static void
transfer_relfile(FileNameMap *map, const char *type_suffix, bool vm_must_add_frozenbit)
{
 char old_file[MAXPGPATH];
 char new_file[MAXPGPATH];
 int segno;
 char extent_suffix[65];
 struct stat statbuf;






 for (segno = 0;; segno++)
 {
  if (segno == 0)
   extent_suffix[0] = '\0';
  else
   snprintf(extent_suffix, sizeof(extent_suffix), ".%d", segno);

  snprintf(old_file, sizeof(old_file), "%s%s/%u/%u%s%s",
     map->old_tablespace,
     map->old_tablespace_suffix,
     map->old_db_oid,
     map->old_relfilenode,
     type_suffix,
     extent_suffix);
  snprintf(new_file, sizeof(new_file), "%s%s/%u/%u%s%s",
     map->new_tablespace,
     map->new_tablespace_suffix,
     map->new_db_oid,
     map->new_relfilenode,
     type_suffix,
     extent_suffix);


  if (type_suffix[0] != '\0' || segno != 0)
  {

   if (stat(old_file, &statbuf) != 0)
   {

    if (errno == ENOENT)
     return;
    else
     pg_fatal("error while checking for file existence \"%s.%s\" (\"%s\" to \"%s\"): %s\n",
        map->nspname, map->relname, old_file, new_file,
        strerror(errno));
   }


   if (statbuf.st_size == 0)
    return;
  }

  unlink(new_file);


  pg_log(PG_STATUS, "%s", old_file);

  if (vm_must_add_frozenbit && strcmp(type_suffix, "_vm") == 0)
  {

   pg_log(PG_VERBOSE, "rewriting \"%s\" to \"%s\"\n",
       old_file, new_file);
   rewriteVisibilityMap(old_file, new_file, map->nspname, map->relname);
  }
  else
   switch (user_opts.transfer_mode)
   {
    case 130:
     pg_log(PG_VERBOSE, "cloning \"%s\" to \"%s\"\n",
         old_file, new_file);
     cloneFile(old_file, new_file, map->nspname, map->relname);
     break;
    case 129:
     pg_log(PG_VERBOSE, "copying \"%s\" to \"%s\"\n",
         old_file, new_file);
     copyFile(old_file, new_file, map->nspname, map->relname);
     break;
    case 128:
     pg_log(PG_VERBOSE, "linking \"%s\" to \"%s\"\n",
         old_file, new_file);
     linkFile(old_file, new_file, map->nspname, map->relname);
   }
 }
}
