
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int version; struct TYPE_4__* one_page_buf; } ;
typedef int RDyldRebaseInfo3 ;
typedef int RDyldRebaseInfo2 ;
typedef int RDyldRebaseInfo1 ;
typedef TYPE_1__ RDyldRebaseInfo ;


 int R_FREE (TYPE_1__*) ;
 int rebase_info1_free (int *) ;
 int rebase_info2_free (int *) ;
 int rebase_info3_free (int *) ;

__attribute__((used)) static void rebase_info_free(RDyldRebaseInfo *rebase_info) {
 if (!rebase_info) {
  return;
 }

 R_FREE (rebase_info->one_page_buf);

 ut8 version = rebase_info->version;

 if (version == 1) {
  rebase_info1_free ((RDyldRebaseInfo1*) rebase_info);
 } else if (version == 2) {
  rebase_info2_free ((RDyldRebaseInfo2*) rebase_info);
 } else if (version == 3) {
  rebase_info3_free ((RDyldRebaseInfo3*) rebase_info);
 } else {
  R_FREE (rebase_info);
 }
}
