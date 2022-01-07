
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * data; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ RIODesc ;


 int R_FREE (int ) ;
 int desc ;
 int gdbr_cleanup (int ) ;
 int gdbr_disconnect (int ) ;
 TYPE_2__* riogdb ;

__attribute__((used)) static int __close(RIODesc *fd) {
 if (fd) {
  R_FREE (fd->name);
 }
 gdbr_disconnect (desc);
 gdbr_cleanup (desc);
 if (riogdb) {
  riogdb->data = ((void*)0);
 }
 R_FREE (desc);
 return -1;
}
