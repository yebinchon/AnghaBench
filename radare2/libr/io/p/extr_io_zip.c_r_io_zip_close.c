
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef int RIOZipFileObj ;
typedef TYPE_1__ RIODesc ;


 int r_io_zip_free_zipfileobj (int *) ;

__attribute__((used)) static int r_io_zip_close(RIODesc *fd) {
 RIOZipFileObj *zfo;
 if (!fd || !fd->data) {
  return -1;
 }
 zfo = fd->data;
 r_io_zip_free_zipfileobj (zfo);
 zfo = fd->data = ((void*)0);
 return 0;
}
