
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int csh ;
typedef int cs_insn ;
struct TYPE_9__ {int scale; int index; } ;
struct TYPE_12__ {TYPE_2__ mem; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_11__ {TYPE_1__ mem; } ;
struct TYPE_10__ {int type; int scale; void* ireg; int * src; int dst; } ;
typedef TYPE_3__ RAnalOp ;


 scalar_t__ HASMEMINDEX (int) ;
 scalar_t__ HASMEMINDEX64 (int) ;
 TYPE_7__ INSOP (int) ;
 TYPE_6__ INSOP64 (int) ;




 int R_ANAL_OP_TYPE_MASK ;






 int create_src_dst (TYPE_3__*) ;
 int cs_reg_name (int ,int ) ;
 void* r_str_get (int ) ;
 int set_src_dst (int ,int *,int *,int,int) ;

__attribute__((used)) static void op_fillval(RAnalOp *op , csh handle, cs_insn *insn, int bits) {
 create_src_dst (op);
 switch (op->type & R_ANAL_OP_TYPE_MASK) {
 case 134:
 case 133:
 case 129:
 case 137:
 case 136:
 case 128:
 case 132:
 case 135:
 case 131:
  set_src_dst (op->src[2], &handle, insn, 3, bits);
  set_src_dst (op->src[1], &handle, insn, 2, bits);
  set_src_dst (op->src[0], &handle, insn, 1, bits);
  set_src_dst (op->dst, &handle, insn, 0, bits);
  break;
 case 130:
  set_src_dst (op->dst, &handle, insn, 1, bits);
  set_src_dst (op->src[0], &handle, insn, 0, bits);
  break;
 default:
  break;
 }
 if ((bits == 64) && HASMEMINDEX64 (1)) {
  op->ireg = r_str_get (cs_reg_name (handle, INSOP64 (1).mem.index));
 } else if (HASMEMINDEX (1)) {
  op->ireg = r_str_get (cs_reg_name (handle, INSOP (1).mem.index));
  op->scale = INSOP (1).mem.scale;
 }
}
