
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transfer_mode; } ;





 int check_databases_are_compatible () ;
 int check_file_clone () ;
 int check_for_prepared_transactions (int *) ;
 int check_hard_link () ;
 int check_is_install_user (int *) ;
 int check_loadable_libraries () ;
 int check_new_cluster_is_empty () ;
 int get_db_and_rel_infos (int *) ;
 int new_cluster ;
 TYPE_1__ user_opts ;

void
check_new_cluster(void)
{
 get_db_and_rel_infos(&new_cluster);

 check_new_cluster_is_empty();
 check_databases_are_compatible();

 check_loadable_libraries();

 switch (user_opts.transfer_mode)
 {
  case 130:
   check_file_clone();
   break;
  case 129:
   break;
  case 128:
   check_hard_link();
   break;
 }

 check_is_install_user(&new_cluster);

 check_for_prepared_transactions(&new_cluster);
}
