
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ranges; } ;
typedef TYPE_1__ RRebaseInfo ;


 int R_FREE (TYPE_1__*) ;

__attribute__((used)) static void r_rebase_info_free(RRebaseInfo *info) {
 if (!info) {
  return;
 }

 if (info->ranges) {
  R_FREE (info->ranges);
  info->ranges = ((void*)0);
 }

 R_FREE (info);
}
