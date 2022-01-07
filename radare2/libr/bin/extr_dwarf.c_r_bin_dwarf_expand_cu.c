
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int capacity; int length; int * dies; } ;
typedef int RBinDwarfDIE ;
typedef TYPE_1__ RBinDwarfCompUnit ;


 int EINVAL ;
 int ENOMEM ;
 int memset (int *,int ,int) ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static int r_bin_dwarf_expand_cu(RBinDwarfCompUnit *cu) {
 RBinDwarfDIE *tmp;

 if (!cu || cu->capacity == 0 || cu->capacity != cu->length) {
  return -EINVAL;
 }

 tmp = (RBinDwarfDIE*)realloc(cu->dies,
   cu->capacity * 2 * sizeof(RBinDwarfDIE));
 if (!tmp) {
  return -ENOMEM;
 }

 memset ((ut8*)tmp + cu->capacity * sizeof (RBinDwarfDIE),
   0, cu->capacity * sizeof (RBinDwarfDIE));
 cu->dies = tmp;
 cu->capacity *= 2;

 return 0;
}
