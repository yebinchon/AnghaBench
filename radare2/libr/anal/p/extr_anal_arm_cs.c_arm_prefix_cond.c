
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;
 int r_strbuf_setf (int *,char*) ;

const char* arm_prefix_cond(RAnalOp *op, int cond_type) {
 const char *close_cond[2];
 close_cond[0] = "\0";
 close_cond[1] = ",}\0";
 int close_type = 0;
 switch (cond_type) {
 case 141:
  close_type = 1;
  r_strbuf_setf (&op->esil, "zf,?{,");
  break;
 case 131:
  close_type = 1;
  r_strbuf_setf (&op->esil, "zf,!,?{,");
  break;
 case 137:
  close_type = 1;
  r_strbuf_setf (&op->esil, "cf,?{,");
  break;
 case 135:
  close_type = 1;
  r_strbuf_setf (&op->esil, "cf,!,?{,");
  break;
 case 132:
  close_type = 1;
  r_strbuf_setf (&op->esil, "nf,?{,");
  break;
 case 130:
  close_type = 1;
  r_strbuf_setf (&op->esil, "nf,!,?{,");
  break;
 case 128:
  close_type = 1;
  r_strbuf_setf (&op->esil, "vf,?{,");
  break;
 case 129:
  close_type = 1;
  r_strbuf_setf (&op->esil, "vf,!,?{,");
  break;
 case 138:
  close_type = 1;
  r_strbuf_setf (&op->esil, "cf,zf,!,&,?{,");
  break;
 case 134:
  close_type = 1;
  r_strbuf_setf (&op->esil, "cf,!,zf,!,|,?{,");
  break;
 case 140:
  close_type = 1;
  r_strbuf_setf (&op->esil, "nf,vf,^,!,?{,");
  break;
 case 133:
  close_type = 1;
  r_strbuf_setf (&op->esil, "nf,vf,^,?{,");
  break;
 case 139:

  close_type = 1;
  r_strbuf_setf (&op->esil, "zf,!,nf,vf,^,!,&,?{,");
  break;
 case 136:

  close_type = 1;
  r_strbuf_setf (&op->esil, "zf,nf,vf,^,|,?{,");
  break;
 case 142:

  break;
 default:
  break;
 }
 return close_cond[close_type];
}
