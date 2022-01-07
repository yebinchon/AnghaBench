
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int capacity; int length; int * decls; } ;
typedef TYPE_1__ RBinDwarfDebugAbbrev ;
typedef int RBinDwarfAbbrevDecl ;


 int EINVAL ;
 int ENOMEM ;
 int memset (int *,int ,int) ;
 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static int r_bin_dwarf_expand_debug_abbrev(RBinDwarfDebugAbbrev *da) {
 RBinDwarfAbbrevDecl *tmp;

 if (!da || da->capacity == 0 || da->capacity != da->length) {
  return -EINVAL;
 }

 tmp = (RBinDwarfAbbrevDecl*)realloc (da->decls,
   da->capacity * 2 * sizeof (RBinDwarfAbbrevDecl));

 if (!tmp) {
  return -ENOMEM;
 }
 memset ((ut8*)tmp + da->capacity * sizeof (RBinDwarfAbbrevDecl),
   0, da->capacity * sizeof (RBinDwarfAbbrevDecl));

 da->decls = tmp;
 da->capacity *= 2;

 return 0;
}
