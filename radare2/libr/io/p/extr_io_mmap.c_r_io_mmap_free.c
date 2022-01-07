
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; struct TYPE_5__* filename; } ;
typedef TYPE_1__ RIOMMapFileObj ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int r_buf_free (int ) ;

__attribute__((used)) static void r_io_mmap_free(RIOMMapFileObj *mmo) {
 free (mmo->filename);
 r_buf_free (mmo->buf);
 memset (mmo, 0, sizeof (RIOMMapFileObj));
 free (mmo);
}
