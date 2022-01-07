
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RBuffer ;


 int ar_close (int *) ;

__attribute__((used)) static int r_io_ar_close(RIODesc *fd) {
 RBuffer *b = ((void*)0);
 if (!fd || !fd->data) {
  return -1;
 }
 b = fd->data;
 return ar_close (b);
}
