
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lineno; char* path; int * fp; } ;
typedef TYPE_1__ source_file ;
typedef int mrb_state ;
typedef int mrb_debug_context ;


 int * fopen (char*,char*) ;
 int memset (TYPE_1__*,char,int) ;
 scalar_t__ mrb_malloc (int *,int) ;
 int source_file_free (int *,TYPE_1__*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static source_file*
source_file_new(mrb_state *mrb, mrb_debug_context *dbg, char *filename)
{
  source_file *file;

  file = (source_file*)mrb_malloc(mrb, sizeof(source_file));

  memset(file, '\0', sizeof(source_file));
  file->fp = fopen(filename, "rb");

  if (file->fp == ((void*)0)) {
    source_file_free(mrb, file);
    return ((void*)0);
  }

  file->lineno = 1;
  file->path = (char*)mrb_malloc(mrb, strlen(filename) + 1);
  strcpy(file->path, filename);
  return file;
}
