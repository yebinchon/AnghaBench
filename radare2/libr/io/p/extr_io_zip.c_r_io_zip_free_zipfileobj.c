
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b; struct TYPE_5__* password; struct TYPE_5__* name; scalar_t__ modified; } ;
typedef TYPE_1__ RIOZipFileObj ;


 int free (TYPE_1__*) ;
 int r_buf_free (int ) ;
 int r_io_zip_flush_file (TYPE_1__*) ;

__attribute__((used)) static void r_io_zip_free_zipfileobj(RIOZipFileObj *zfo) {
 if (!zfo) {
  return;
 }
 if (zfo->modified) {
  r_io_zip_flush_file (zfo);
 }
 free (zfo->name);
 free (zfo->password);
 r_buf_free (zfo->b);
 free (zfo);
}
