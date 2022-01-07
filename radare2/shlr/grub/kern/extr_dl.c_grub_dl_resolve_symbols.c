
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_obj_symbol {scalar_t__ segment; int name; int offset; } ;
struct grub_obj_reloc_extern {scalar_t__ segment; int type; int addend; scalar_t__ symbol_segment; int symbol_name; int offset; } ;
struct grub_obj_reloc {int dummy; } ;
struct grub_obj_header {int string_table; int symbol_table; int reloc_table; } ;
typedef int grub_uint64_t ;
typedef int grub_uint32_t ;
typedef int grub_uint16_t ;
typedef int grub_int32_t ;
typedef int grub_err_t ;
typedef int grub_dl_t ;
typedef int grub_addr_t ;


 int GRUB_ERR_BAD_MODULE ;
 int GRUB_ERR_NONE ;
 int GRUB_OBJ_REL_FLAG_REL ;
 int GRUB_OBJ_REL_TYPE_MASK ;
 scalar_t__ GRUB_OBJ_SEGMENT_END ;
 char* grub_dl_get_section_addr (int ,scalar_t__) ;
 scalar_t__ grub_dl_register_symbol (char*,char*,int ) ;
 char* grub_dl_resolve_symbol (char*) ;
 int grub_errno ;
 int grub_error (int ,char*,...) ;

__attribute__((used)) static grub_err_t
grub_dl_resolve_symbols (grub_dl_t mod, struct grub_obj_header *e)
{
  char *strtab;
  struct grub_obj_symbol *sym;
  struct grub_obj_reloc_extern *rel;

  strtab = (char *) e + e->string_table;

  for (sym = (struct grub_obj_symbol *) ((char *) e + e->symbol_table);
       sym->segment != GRUB_OBJ_SEGMENT_END; sym++)
    {
      char *addr;

      addr = grub_dl_get_section_addr (mod, sym->segment);
      addr += sym->offset;

      if (grub_dl_register_symbol (strtab + sym->name, addr, mod))
 return grub_errno;
    }

  for (rel = (struct grub_obj_reloc_extern *) ((char *) e + e->reloc_table);
       rel->segment != GRUB_OBJ_SEGMENT_END;)
    {
      char *addr, *symbol_addr;
      grub_addr_t addend;
      int type;

      addr = grub_dl_get_section_addr (mod, rel->segment);
      addr += rel->offset;
      type = rel->type;




      addend = *((grub_addr_t *) addr);


      if (rel->symbol_segment == GRUB_OBJ_SEGMENT_END)
 {
   char *name;

   name = strtab + rel->symbol_name;
   symbol_addr = grub_dl_resolve_symbol (name);
   if (! symbol_addr)
     return grub_error (GRUB_ERR_BAD_MODULE,
          "symbol not found: `%s'", name);
   rel++;
 }
      else
 {
   symbol_addr = grub_dl_get_section_addr (mod, rel->symbol_segment);
   rel = (struct grub_obj_reloc_extern *)
     ((char *) rel + sizeof (struct grub_obj_reloc));
 }

      addend += (grub_addr_t) symbol_addr;
      if (type & GRUB_OBJ_REL_FLAG_REL)
 addend -= (grub_addr_t) addr;

      type &= GRUB_OBJ_REL_TYPE_MASK;
      switch (type)
 {
 case 133:
   *((grub_uint32_t *) addr) = addend;
   break;
 default:
   return grub_error (GRUB_ERR_BAD_MODULE,
        "unknown reloc type %d", type);
 }
    }

  return GRUB_ERR_NONE;
}
