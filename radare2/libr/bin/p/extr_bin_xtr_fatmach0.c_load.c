
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int file; TYPE_1__* cur; } ;
struct TYPE_4__ {int * xtr_obj; } ;
typedef TYPE_2__ RBin ;


 int * r_bin_fatmach0_new (int ) ;

__attribute__((used)) static bool load(RBin *bin) {
 return ((bin->cur->xtr_obj = r_bin_fatmach0_new (bin->file)) != ((void*)0));
}
