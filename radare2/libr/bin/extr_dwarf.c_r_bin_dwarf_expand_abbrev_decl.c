
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int capacity; int length; int * specs; } ;
typedef int RBinDwarfAttrSpec ;
typedef TYPE_1__ RBinDwarfAbbrevDecl ;


 int EINVAL ;
 int ENOMEM ;
 int memset (int *,int ,int) ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static int r_bin_dwarf_expand_abbrev_decl(RBinDwarfAbbrevDecl *ad) {
 RBinDwarfAttrSpec *tmp;

 if (!ad || !ad->capacity || ad->capacity != ad->length) {
  return -EINVAL;
 }

 tmp = (RBinDwarfAttrSpec*)realloc (ad->specs,
   ad->capacity * 2 * sizeof (RBinDwarfAttrSpec));

 if (!tmp) {
  return -ENOMEM;
 }


 memset ((ut8*)tmp + ad->capacity * sizeof (RBinDwarfAttrSpec),
   0, ad->capacity * sizeof (RBinDwarfAttrSpec));
 ad->specs = tmp;
 ad->capacity *= 2;

 return 0;
}
