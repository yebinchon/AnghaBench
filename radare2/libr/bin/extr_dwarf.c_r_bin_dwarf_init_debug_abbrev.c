
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int capacity; int decls; } ;
typedef TYPE_1__ RBinDwarfDebugAbbrev ;
typedef int RBinDwarfAbbrevDecl ;


 int DEBUG_ABBREV_CAP ;
 int EINVAL ;
 int ENOMEM ;
 int calloc (int,int ) ;

__attribute__((used)) static int r_bin_dwarf_init_debug_abbrev(RBinDwarfDebugAbbrev *da) {
 if (!da) {
  return -EINVAL;
 }
 da->decls = calloc (sizeof (RBinDwarfAbbrevDecl), DEBUG_ABBREV_CAP);
 if (!da->decls) {
  return -ENOMEM;
 }
 da->capacity = DEBUG_ABBREV_CAP;
 da->length = 0;

 return 0;
}
