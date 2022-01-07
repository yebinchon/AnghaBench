
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int capacity; scalar_t__ length; int attr_values; } ;
typedef TYPE_1__ RBinDwarfDIE ;
typedef int RBinDwarfAttrValue ;


 int EINVAL ;
 int ENOMEM ;
 int calloc (int,int) ;

__attribute__((used)) static int r_bin_dwarf_init_die(RBinDwarfDIE *die) {
 if (!die) {
  return -EINVAL;
 }
 die->attr_values = calloc (sizeof (RBinDwarfAttrValue), 8);
 if (!die->attr_values) {
  return -ENOMEM;
 }
 die->capacity = 8;
 die->length = 0;
 return 0;
}
