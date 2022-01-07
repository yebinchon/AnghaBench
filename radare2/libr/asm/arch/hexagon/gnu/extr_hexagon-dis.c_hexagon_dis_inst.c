
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hexagon_opcode ;
typedef int hexagon_insn ;
struct TYPE_3__ {int stream; int (* fprintf_func ) (int ,char*,char*) ;} ;
typedef TYPE_1__ disassemble_info ;
typedef int bfd_vma ;


 int HEXAGON_INSN_LEN ;
 int hexagon_dis_opcode (char*,int ,int ,int const*,char**) ;
 int * hexagon_lookup_insn (int ) ;
 int strcpy (char*,char*) ;
 int stub1 (int ,char*,char*) ;

__attribute__((used)) static int
hexagon_dis_inst(
     bfd_vma address,
     hexagon_insn insn,
     char *instrBuffer,
     disassemble_info * info
)
{
  const hexagon_opcode *opcode;
  int len;
  char *errmsg = ((void*)0);

  len = HEXAGON_INSN_LEN;

  opcode = hexagon_lookup_insn(insn);
  if (opcode) {

      if (!hexagon_dis_opcode(instrBuffer, insn, address, opcode, &errmsg)) {

        if (errmsg) {
          (*info->fprintf_func) (info->stream, "%s", errmsg);
          strcpy(instrBuffer, "");
        }
      }

      return len;
  }


  strcpy(instrBuffer, "<unknown>");
  return 4;
}
