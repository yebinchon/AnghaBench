
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action; int type; int link_target; int path; } ;
typedef TYPE_1__ file_entry_t ;


 int Assert (int) ;
 scalar_t__ FILE_ACTION_CREATE ;



 int create_target_dir (int ) ;
 int create_target_symlink (int ,int ) ;
 int pg_fatal (char*) ;

void
create_target(file_entry_t *entry)
{
 Assert(entry->action == FILE_ACTION_CREATE);

 switch (entry->type)
 {
  case 130:
   create_target_dir(entry->path);
   break;

  case 128:
   create_target_symlink(entry->path, entry->link_target);
   break;

  case 129:

   pg_fatal("invalid action (CREATE) for regular file");
   break;
 }
}
