
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int localpath ;
struct TYPE_9__ {scalar_t__ nlist; TYPE_3__* last; TYPE_3__* first; int narray; int * array; } ;
typedef TYPE_2__ filemap_t ;
typedef scalar_t__ file_type_t ;
struct TYPE_8__ {scalar_t__ bitmapsize; int * bitmap; } ;
struct TYPE_10__ {char* path; size_t oldsize; char* link_target; struct TYPE_10__* next; int isrelfile; TYPE_1__ pagemap; scalar_t__ newsize; int action; scalar_t__ type; } ;
typedef TYPE_3__ file_entry_t ;


 int Assert (int ) ;
 scalar_t__ ENOENT ;
 int FILE_ACTION_REMOVE ;
 scalar_t__ FILE_TYPE_DIRECTORY ;
 scalar_t__ FILE_TYPE_SYMLINK ;
 int MAXPGPATH ;
 int * bsearch (TYPE_3__**,int *,int ,int,int ) ;
 char* datadir_target ;
 scalar_t__ errno ;
 TYPE_2__* filemap ;
 int filemap_list_to_array (TYPE_2__*) ;
 int isRelDataFile (char const*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int path_cmp ;
 int pg_fatal (char*,...) ;
 TYPE_3__* pg_malloc (int) ;
 char* pg_strdup (char const*) ;
 int qsort (int *,int ,int,int ) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

void
process_target_file(const char *path, file_type_t type, size_t oldsize,
     const char *link_target)
{
 bool exists;
 char localpath[MAXPGPATH];
 struct stat statbuf;
 file_entry_t key;
 file_entry_t *key_ptr;
 filemap_t *map = filemap;
 file_entry_t *entry;







 snprintf(localpath, sizeof(localpath), "%s/%s", datadir_target, path);
 if (lstat(localpath, &statbuf) < 0)
 {
  if (errno != ENOENT)
   pg_fatal("could not stat file \"%s\": %m",
      localpath);

  exists = 0;
 }

 if (map->array == ((void*)0))
 {

  if (map->nlist == 0)
  {

   pg_fatal("source file list is empty");
  }

  filemap_list_to_array(map);

  Assert(map->array != ((void*)0));

  qsort(map->array, map->narray, sizeof(file_entry_t *), path_cmp);
 }




 if (strcmp(path, "pg_wal") == 0 && type == FILE_TYPE_SYMLINK)
  type = FILE_TYPE_DIRECTORY;

 key.path = (char *) path;
 key_ptr = &key;
 exists = (bsearch(&key_ptr, map->array, map->narray, sizeof(file_entry_t *),
       path_cmp) != ((void*)0));


 if (!exists)
 {
  entry = pg_malloc(sizeof(file_entry_t));
  entry->path = pg_strdup(path);
  entry->type = type;
  entry->action = FILE_ACTION_REMOVE;
  entry->oldsize = oldsize;
  entry->newsize = 0;
  entry->link_target = link_target ? pg_strdup(link_target) : ((void*)0);
  entry->next = ((void*)0);
  entry->pagemap.bitmap = ((void*)0);
  entry->pagemap.bitmapsize = 0;
  entry->isrelfile = isRelDataFile(path);

  if (map->last == ((void*)0))
   map->first = entry;
  else
   map->last->next = entry;
  map->last = entry;
  map->nlist++;
 }
 else
 {




 }
}
