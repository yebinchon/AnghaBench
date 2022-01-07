
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_5__ {int type; int u_shift; int u_mask; int u_lshift; int s_shift; int s_mask; int s_lshift; int s_smask; } ;
typedef TYPE_1__ rsp_operand_decoder ;
struct TYPE_6__ {int type; int u; int s; } ;
typedef TYPE_2__ rsp_operand ;


 int RSP_IMEM_OFFSET ;


 void* rsp_mem_addr (int,int ) ;
 int rsp_sign_extend (int,int ) ;

__attribute__((used)) static rsp_operand rsp_operand_decode(ut64 pc, ut32 iw, const rsp_operand_decoder* odec) {
 rsp_operand opnd;

 opnd.type = odec->type;
 opnd.u = ((iw >> odec->u_shift) & odec->u_mask) << odec->u_lshift;
 opnd.s = rsp_sign_extend ((iw >> odec->s_shift) & odec->s_mask, odec->s_smask) << odec->s_lshift;


 switch (opnd.type) {
 case 128:
  opnd.u = rsp_mem_addr (opnd.u, RSP_IMEM_OFFSET);
  break;
 case 129:

  opnd.u = rsp_mem_addr (pc + 4 + opnd.s, RSP_IMEM_OFFSET);
  break;
 default: break;
 }

 return opnd;
}
