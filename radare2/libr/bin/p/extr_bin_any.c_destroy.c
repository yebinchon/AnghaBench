
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int bin_obj; } ;
typedef TYPE_2__ RBinFile ;


 int r_buf_free (int ) ;

__attribute__((used)) static void destroy(RBinFile *bf) {
 r_buf_free (bf->o->bin_obj);
}
