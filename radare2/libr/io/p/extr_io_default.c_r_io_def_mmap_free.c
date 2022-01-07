
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int buf; struct TYPE_4__* filename; } ;
typedef TYPE_1__ RIOMMapFileObj ;


 int close (int ) ;
 int free (TYPE_1__*) ;
 int r_buf_free (int ) ;

__attribute__((used)) static void r_io_def_mmap_free (RIOMMapFileObj *mmo) {
 if (mmo) {
  free (mmo->filename);
  r_buf_free (mmo->buf);
  close (mmo->fd);
  free (mmo);
 }
}
