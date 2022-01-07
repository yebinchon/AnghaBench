
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disassemble_info {TYPE_1__** symtab; int * section; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;
struct TYPE_2__ {int * section; } ;


 int FALSE ;
 int is_mapping_symbol (struct disassemble_info*,int,int*) ;

__attribute__((used)) static int
get_map_sym_type (struct disassemble_info *info,
    int n,
    enum map_type *map_type)
{

  if (info->section != ((void*)0) && info->section != info->symtab[n]->section) {
   return FALSE;
  }

  return is_mapping_symbol (info, n, map_type);
}
