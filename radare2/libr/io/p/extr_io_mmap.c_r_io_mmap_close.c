
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef int RIOMMapFileObj ;
typedef TYPE_1__ RIODesc ;


 int r_io_mmap_free (int *) ;

__attribute__((used)) static int r_io_mmap_close(RIODesc *fd) {
 if (!fd || !fd->data) {
  return -1;
 }
 r_io_mmap_free ((RIOMMapFileObj *) fd->data);
 fd->data = ((void*)0);
 return 0;
}
