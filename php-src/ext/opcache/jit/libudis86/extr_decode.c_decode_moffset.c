
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud_operand {int size; void* scale; void* index; void* base; int type; } ;
struct ud {int adr_mode; } ;


 void* UD_NONE ;
 int UD_OP_MEM ;
 int decode_mem_disp (struct ud*,int ,struct ud_operand*) ;
 int resolve_operand_size (struct ud*,unsigned int) ;

__attribute__((used)) static void
decode_moffset(struct ud *u, unsigned int size, struct ud_operand *opr)
{
  opr->type = UD_OP_MEM;
  opr->base = UD_NONE;
  opr->index = UD_NONE;
  opr->scale = UD_NONE;
  opr->size = resolve_operand_size(u, size);
  decode_mem_disp(u, u->adr_mode, opr);
}
