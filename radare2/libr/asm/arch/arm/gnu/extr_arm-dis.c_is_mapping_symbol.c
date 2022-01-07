
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int * symtab; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 int FALSE ;
 int MAP_ARM ;
 int MAP_DATA ;
 int MAP_THUMB ;
 int TRUE ;
 char* bfd_asymbol_name (int ) ;

__attribute__((used)) static int
is_mapping_symbol (struct disassemble_info *info, int n,
     enum map_type *map_type)
{
  const char *name;

  name = bfd_asymbol_name (info->symtab[n]);
  if (name[0] == '$' && (name[1] == 'a' || name[1] == 't' || name[1] == 'd')
      && (name[2] == 0 || name[2] == '.'))
    {
      *map_type = ((name[1] == 'a') ? MAP_ARM
     : (name[1] == 't') ? MAP_THUMB
     : MAP_DATA);
      return TRUE;
    }

  return FALSE;
}
