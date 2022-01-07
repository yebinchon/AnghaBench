
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int capacity; int dies; } ;
typedef int RBinDwarfDIE ;
typedef TYPE_1__ RBinDwarfCompUnit ;


 int COMP_UNIT_CAPACITY ;
 int EINVAL ;
 int ENOMEM ;
 int calloc (int,int ) ;

__attribute__((used)) static int r_bin_dwarf_init_comp_unit(RBinDwarfCompUnit *cu) {
 if (!cu) {
  return -EINVAL;
 }
 cu->dies = calloc (sizeof (RBinDwarfDIE), COMP_UNIT_CAPACITY);
 if (!cu->dies) {
  return -ENOMEM;
 }
 cu->capacity = COMP_UNIT_CAPACITY;
 cu->length = 0;
 return 0;
}
