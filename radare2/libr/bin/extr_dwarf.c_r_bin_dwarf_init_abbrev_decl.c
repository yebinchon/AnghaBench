
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int capacity; int specs; } ;
typedef int RBinDwarfAttrSpec ;
typedef TYPE_1__ RBinDwarfAbbrevDecl ;


 int ABBREV_DECL_CAP ;
 int EINVAL ;
 int ENOMEM ;
 int calloc (int,int ) ;

__attribute__((used)) static int r_bin_dwarf_init_abbrev_decl(RBinDwarfAbbrevDecl *ad) {
 if (!ad) {
  return -EINVAL;
 }
 ad->specs = calloc (sizeof( RBinDwarfAttrSpec), ABBREV_DECL_CAP);

 if (!ad->specs) {
  return -ENOMEM;
 }

 ad->capacity = ABBREV_DECL_CAP;
 ad->length = 0;

 return 0;
}
