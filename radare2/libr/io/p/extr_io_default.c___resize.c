
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int perm; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 int R_PERM_W ;
 int r_io_def_mmap_truncate (TYPE_1__*,int ) ;
 int r_return_val_if_fail (int ,int) ;

__attribute__((used)) static bool __resize(RIO *io, RIODesc *fd, ut64 size) {
 r_return_val_if_fail (io && fd && fd->data, 0);
 RIOMMapFileObj *mmo = fd->data;
 if (!(mmo->perm & R_PERM_W)) {
  return 0;
 }
 return r_io_def_mmap_truncate (mmo, size);
}
