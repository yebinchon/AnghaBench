
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action; int type; int path; } ;
typedef TYPE_1__ file_entry_t ;


 int Assert (int) ;
 scalar_t__ FILE_ACTION_REMOVE ;



 int remove_target_dir (int ) ;
 int remove_target_file (int ,int) ;
 int remove_target_symlink (int ) ;

void
remove_target(file_entry_t *entry)
{
 Assert(entry->action == FILE_ACTION_REMOVE);

 switch (entry->type)
 {
  case 130:
   remove_target_dir(entry->path);
   break;

  case 129:
   remove_target_file(entry->path, 0);
   break;

  case 128:
   remove_target_symlink(entry->path);
   break;
 }
}
