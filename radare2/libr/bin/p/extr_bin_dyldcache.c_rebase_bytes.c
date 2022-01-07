
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int version; } ;
typedef int RDyldRebaseInfo3 ;
typedef int RDyldRebaseInfo2 ;
typedef int RDyldRebaseInfo1 ;
typedef TYPE_1__ RDyldRebaseInfo ;


 int rebase_bytes_v1 (int *,int *,int ,int,int ) ;
 int rebase_bytes_v2 (int *,int *,int ,int,int ) ;
 int rebase_bytes_v3 (int *,int *,int ,int,int ) ;

__attribute__((used)) static void rebase_bytes(RDyldRebaseInfo *rebase_info, ut8 *buf, ut64 offset, int count, ut64 start_of_write) {
 if (!rebase_info || !buf) {
  return;
 }

 if (rebase_info->version == 3) {
  rebase_bytes_v3 ((RDyldRebaseInfo3*) rebase_info, buf, offset, count, start_of_write);
 } else if (rebase_info->version == 2) {
  rebase_bytes_v2 ((RDyldRebaseInfo2*) rebase_info, buf, offset, count, start_of_write);
 } else if (rebase_info->version == 1) {
  rebase_bytes_v1 ((RDyldRebaseInfo1*) rebase_info, buf, offset, count, start_of_write);
 }
}
