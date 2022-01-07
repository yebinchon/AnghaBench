
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* print_address_func ) (scalar_t__,TYPE_1__*) ;} ;
typedef TYPE_1__ disassemble_info ;
typedef int bfd_vma ;


 scalar_t__ NEXTBYTE (unsigned char*) ;
 scalar_t__ NEXTWORD (unsigned char*) ;
 int abort () ;
 int print_insn_mode (char const*,int,unsigned char*,int ,TYPE_1__*) ;
 int stub1 (scalar_t__,TYPE_1__*) ;
 int stub2 (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int
print_insn_arg (const char *d,
  unsigned char *p0,
  bfd_vma addr,
  disassemble_info *info)
{
  int arg_len;


  switch (d[1])
    {
    case 'b' : arg_len = 1; break;
    case 'd' : arg_len = 8; break;
    case 'f' : arg_len = 4; break;
    case 'g' : arg_len = 8; break;
    case 'h' : arg_len = 16; break;
    case 'l' : arg_len = 4; break;
    case 'o' : arg_len = 16; break;
    case 'w' : arg_len = 2; break;
    case 'q' : arg_len = 8; break;
    default : abort ();
    }


  if (d[0] == 'b')
    {
      unsigned char *p = p0;

      if (arg_len == 1) {
       (*info->print_address_func) (addr + 1 + NEXTBYTE (p), info);
      } else {
       (*info->print_address_func) (addr + 2 + NEXTWORD (p), info);
      }

      return p - p0;
    }

  return print_insn_mode (d, arg_len, p0, addr, info);
}
