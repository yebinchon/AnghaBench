
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* file; } ;
typedef TYPE_1__ RDyldBinImage ;


 int R_FREE (TYPE_1__*) ;

__attribute__((used)) static void free_bin(RDyldBinImage *bin) {
 if (!bin) {
  return;
 }

 R_FREE (bin->file);
 R_FREE (bin);
}
