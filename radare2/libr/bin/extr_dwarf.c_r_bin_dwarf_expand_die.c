
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int capacity; int length; int * attr_values; } ;
typedef TYPE_1__ RBinDwarfDIE ;
typedef int RBinDwarfAttrValue ;


 int EINVAL ;
 int ENOMEM ;
 int memset (int *,int ,int) ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static int r_bin_dwarf_expand_die(RBinDwarfDIE* die) {
 RBinDwarfAttrValue *tmp = ((void*)0);
 if (!die || die->capacity == 0) {
  return -EINVAL;
 }
 if (die->capacity != die->length) {
  return -EINVAL;
 }
 tmp = (RBinDwarfAttrValue*)realloc (die->attr_values,
   die->capacity * 2 * sizeof (RBinDwarfAttrValue));
 if (!tmp) {
  return -ENOMEM;
 }
 memset ((ut8*)tmp + die->capacity * sizeof (RBinDwarfAttrValue),
   0, die->capacity * sizeof (RBinDwarfAttrValue));
 die->attr_values = tmp;
 die->capacity *= 2;
 return 0;
}
