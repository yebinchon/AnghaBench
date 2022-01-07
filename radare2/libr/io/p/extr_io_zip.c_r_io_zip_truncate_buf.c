
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; } ;
typedef TYPE_1__ RIOZipFileObj ;


 int r_buf_resize (int ,int) ;

__attribute__((used)) static bool r_io_zip_truncate_buf(RIOZipFileObj *zfo, int size) {
 return r_buf_resize (zfo->b, size > 0? size: 0);
}
