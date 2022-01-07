
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct disassemble_info {TYPE_3__** symtab; int * section; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;
struct TYPE_4__ {int st_info; } ;
struct TYPE_5__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
struct TYPE_6__ {int * section; } ;


 unsigned int ELF_ST_TYPE (int ) ;
 int FALSE ;
 int MAP_DATA ;
 int MAP_INSN ;
 unsigned int STT_FUNC ;
 int TRUE ;
 char* bfd_asymbol_name (TYPE_3__*) ;

__attribute__((used)) static int
get_sym_code_type (struct disassemble_info *info, int n,
     enum map_type *map_type)
{
  elf_symbol_type *es;
  unsigned int type;
  const char *name;


  if (info->section != ((void*)0) && info->section != info->symtab[n]->section)
    return FALSE;

  es = *(elf_symbol_type **)(info->symtab + n);
  type = ELF_ST_TYPE (es->internal_elf_sym.st_info);


  if (type == STT_FUNC)
    {
      *map_type = MAP_INSN;
      return TRUE;
    }


  name = bfd_asymbol_name(info->symtab[n]);
  if (name[0] == '$'
      && (name[1] == 'x' || name[1] == 'd')
      && (name[2] == '\0' || name[2] == '.'))
    {
      *map_type = (name[1] == 'x' ? MAP_INSN : MAP_DATA);
      return TRUE;
    }

  return FALSE;
}
