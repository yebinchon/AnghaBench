
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* old_dir; char* new_dir; struct TYPE_3__* next; } ;
typedef TYPE_1__ TablespaceListCell ;
struct TYPE_4__ {TYPE_1__* tail; TYPE_1__* head; } ;


 int MAXPGPATH ;
 int canonicalize_path (char const*) ;
 int exit (int) ;
 int is_absolute_path (char*) ;
 int pg_log_error (char*,...) ;
 scalar_t__ pg_malloc0 (int) ;
 TYPE_2__ tablespace_dirs ;

__attribute__((used)) static void
tablespace_list_append(const char *arg)
{
 TablespaceListCell *cell = (TablespaceListCell *) pg_malloc0(sizeof(TablespaceListCell));
 char *dst;
 char *dst_ptr;
 const char *arg_ptr;

 dst_ptr = dst = cell->old_dir;
 for (arg_ptr = arg; *arg_ptr; arg_ptr++)
 {
  if (dst_ptr - dst >= MAXPGPATH)
  {
   pg_log_error("directory name too long");
   exit(1);
  }

  if (*arg_ptr == '\\' && *(arg_ptr + 1) == '=')
   ;
  else if (*arg_ptr == '=' && (arg_ptr == arg || *(arg_ptr - 1) != '\\'))
  {
   if (*cell->new_dir)
   {
    pg_log_error("multiple \"=\" signs in tablespace mapping");
    exit(1);
   }
   else
    dst = dst_ptr = cell->new_dir;
  }
  else
   *dst_ptr++ = *arg_ptr;
 }

 if (!*cell->old_dir || !*cell->new_dir)
 {
  pg_log_error("invalid tablespace mapping format \"%s\", must be \"OLDDIR=NEWDIR\"", arg);
  exit(1);
 }







 if (!is_absolute_path(cell->old_dir))
 {
  pg_log_error("old directory is not an absolute path in tablespace mapping: %s",
      cell->old_dir);
  exit(1);
 }

 if (!is_absolute_path(cell->new_dir))
 {
  pg_log_error("new directory is not an absolute path in tablespace mapping: %s",
      cell->new_dir);
  exit(1);
 }






 canonicalize_path(cell->old_dir);
 canonicalize_path(cell->new_dir);

 if (tablespace_dirs.tail)
  tablespace_dirs.tail->next = cell;
 else
  tablespace_dirs.head = cell;
 tablespace_dirs.tail = cell;
}
