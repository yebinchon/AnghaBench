
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* buf; int bfvm; } ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIOBfdbg ;


 int R_FREE (TYPE_2__*) ;
 int bfvm_free (int ) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 RIOBfdbg *riom;
 if (!fd || !fd->data) {
  return -1;
 }
 riom = fd->data;
 bfvm_free (riom->bfvm);
 R_FREE (riom->buf);
 R_FREE (fd->data);
 return 0;
}
