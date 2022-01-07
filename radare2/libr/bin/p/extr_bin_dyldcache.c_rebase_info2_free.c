
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* page_extras; struct TYPE_4__* page_starts; } ;
typedef TYPE_1__ RDyldRebaseInfo2 ;


 int R_FREE (TYPE_1__*) ;

__attribute__((used)) static void rebase_info2_free(RDyldRebaseInfo2 *rebase_info) {
 if (!rebase_info) {
  return;
 }

 R_FREE (rebase_info->page_starts);
 R_FREE (rebase_info->page_extras);
 R_FREE (rebase_info);
}
