
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* entries; struct TYPE_4__* toc; } ;
typedef TYPE_1__ RDyldRebaseInfo1 ;


 int R_FREE (TYPE_1__*) ;

__attribute__((used)) static void rebase_info1_free(RDyldRebaseInfo1 *rebase_info) {
 if (!rebase_info) {
  return;
 }

 R_FREE (rebase_info->toc);
 R_FREE (rebase_info->entries);
 R_FREE (rebase_info);
}
