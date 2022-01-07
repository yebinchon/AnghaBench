
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dbg; } ;
typedef TYPE_2__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_4__ {int irep; } ;
typedef int FILE ;


 char* build_path (int *,char const*,char const*) ;
 char* dirname (int *,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int mrb_debug_get_filename (int *,int ,int ) ;
 int mrb_free (int *,void*) ;
 char* strrchr (char const*,char) ;

char*
mrb_debug_get_source(mrb_state *mrb, mrdb_state *mrdb, const char *srcpath, const char *filename)
{
  int i;
  FILE *fp;
  const char *search_path[3];
  char *path = ((void*)0);
  const char *srcname = strrchr(filename, '/');

  if (srcname) srcname++;
  else srcname = filename;

  search_path[0] = srcpath;
  search_path[1] = dirname(mrb, mrb_debug_get_filename(mrb, mrdb->dbg->irep, 0));
  search_path[2] = ".";

  for (i = 0; i < 3; i++) {
    if (search_path[i] == ((void*)0)) {
      continue;
    }

    if ((path = build_path(mrb, search_path[i], srcname)) == ((void*)0)) {
      continue;
    }

    if ((fp = fopen(path, "rb")) == ((void*)0)) {
      mrb_free(mrb, path);
      path = ((void*)0);
      continue;
    }
    fclose(fp);
    break;
  }

  mrb_free(mrb, (void *)search_path[1]);

  return path;
}
