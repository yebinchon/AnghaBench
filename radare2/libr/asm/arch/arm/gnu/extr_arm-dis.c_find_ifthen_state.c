
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int (* read_memory_func ) (scalar_t__,int *,int,struct disassemble_info*) ;scalar_t__ (* symbol_at_address_func ) (scalar_t__,struct disassemble_info*) ;} ;
typedef enum map_type { ____Placeholder_map_type } map_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;


 int MAP_ARM ;
 int MAP_THUMB ;
 scalar_t__ ifthen_address ;
 int ifthen_state ;
 scalar_t__ mapping_symbol_for_insn (scalar_t__,struct disassemble_info*,int*) ;
 scalar_t__ stub1 (scalar_t__,struct disassemble_info*) ;
 int stub2 (scalar_t__,int *,int,struct disassemble_info*) ;

__attribute__((used)) static void
find_ifthen_state (bfd_vma pc,
     struct disassemble_info *info,
     bfd_boolean little)
{
  unsigned char b[2];
  unsigned int insn;
  int status;


  int count;
  int it_count;
  unsigned int seen_it;
  bfd_vma addr;

  ifthen_address = pc;
  ifthen_state = 0;

  addr = pc;
  count = 1;
  it_count = 0;
  seen_it = 0;



  for (;;)
    {
      if (addr == 0 || info->symbol_at_address_func (addr, info))
 {


   if (seen_it && (count & 1)) {
    break;
   }

   return;
 }
      addr -= 2;
      status = info->read_memory_func (addr, (bfd_byte *) b, 2, info);
      if (status) {
       return;
      }

      if (little) {
       insn = (b[0]) | (b[1] << 8);
      } else {
       insn = (b[1]) | (b[0] << 8);
      }
      if (seen_it)
 {
   if ((insn & 0xf800) < 0xe800)
     {



       if (count & 1) {
        break;
       }
       seen_it = 0;
     }
 }
      if ((insn & 0xff00) == 0xbf00 && (insn & 0xf) != 0)
 {
   enum map_type type = MAP_ARM;
   bfd_boolean found = mapping_symbol_for_insn (addr, info, &type);

   if (!found || (found && type == MAP_THUMB))
     {

       seen_it = insn;
       it_count = count >> 1;
     }
 }
 if ((insn & 0xf800) >= 0xe800) {
  count++;
 } else {
  count = (count + 2) | 1;
 }

 if (count >= 8 && !seen_it) {
  return;
 }
    }

  ifthen_state = (seen_it & 0xe0) | ((seen_it << it_count) & 0x1f);
  if ((ifthen_state & 0xf) == 0) {
   ifthen_state = 0;
  }
}
