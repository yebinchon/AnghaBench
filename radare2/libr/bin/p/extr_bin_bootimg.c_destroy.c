
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int buf; } ;
struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {TYPE_3__* bin_obj; } ;
typedef TYPE_2__ RBinFile ;
typedef TYPE_3__ BootImageObj ;


 int R_FREE (TYPE_3__*) ;
 int r_buf_free (int ) ;

__attribute__((used)) static void destroy(RBinFile *bf) {
 BootImageObj *bio = bf->o->bin_obj;
 r_buf_free (bio->buf);
 R_FREE (bf->o->bin_obj);
}
