
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int canon_dir ;
struct TYPE_3__ {char const* new_dir; int old_dir; struct TYPE_3__* next; } ;
typedef TYPE_1__ TablespaceListCell ;
struct TYPE_4__ {TYPE_1__* head; } ;


 int MAXPGPATH ;
 int canonicalize_path (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char const*,int) ;
 TYPE_2__ tablespace_dirs ;

__attribute__((used)) static const char *
get_tablespace_mapping(const char *dir)
{
 TablespaceListCell *cell;
 char canon_dir[MAXPGPATH];


 strlcpy(canon_dir, dir, sizeof(canon_dir));
 canonicalize_path(canon_dir);

 for (cell = tablespace_dirs.head; cell; cell = cell->next)
  if (strcmp(canon_dir, cell->old_dir) == 0)
   return cell->new_dir;

 return dir;
}
