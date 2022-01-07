
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct disassemble_info {TYPE_2__** symtab; int * section; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;
struct TYPE_4__ {int st_target_internal; int st_info; } ;
struct TYPE_6__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_3__ elf_symbol_type ;
struct TYPE_5__ {int * section; } ;


 scalar_t__ ARM_GET_SYM_BRANCH_TYPE (int ) ;
 unsigned int ELF_ST_TYPE (int ) ;
 int FALSE ;
 int MAP_ARM ;
 int MAP_THUMB ;
 unsigned int STT_FUNC ;
 unsigned int STT_GNU_IFUNC ;
 scalar_t__ ST_BRANCH_TO_THUMB ;
 int TRUE ;

__attribute__((used)) static int
get_sym_code_type (struct disassemble_info *info,
     int n,
     enum map_type *map_type)
{
return FALSE;
}
