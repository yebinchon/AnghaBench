
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int rbuf; } ;
typedef TYPE_1__ Rihex ;
typedef TYPE_2__ RIODesc ;


 int free (TYPE_1__*) ;
 int r_buf_free (int ) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 if (!fd || !fd->data) {
  return -1;
 }
 Rihex *rih = fd->data;
 r_buf_free (rih->rbuf);
 free (rih);
 fd->data = ((void*)0);
 return 0;
}
