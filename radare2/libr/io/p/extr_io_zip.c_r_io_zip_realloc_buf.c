
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; } ;
typedef TYPE_1__ RIOZipFileObj ;


 int r_buf_resize (int ,scalar_t__) ;
 scalar_t__ r_buf_tell (int ) ;

__attribute__((used)) static int r_io_zip_realloc_buf(RIOZipFileObj *zfo, int count) {
 return r_buf_resize (zfo->b, r_buf_tell (zfo->b) + count);
}
