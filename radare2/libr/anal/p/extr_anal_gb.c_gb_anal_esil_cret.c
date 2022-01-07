
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {scalar_t__ cond; int esil; } ;
typedef TYPE_1__ RAnalOp ;


 scalar_t__ R_ANAL_COND_EQ ;
 int r_strbuf_setf (int *,char*,char) ;

__attribute__((used)) static inline void gb_anal_esil_cret (RAnalOp *op, const ut8 data)
{
 char cond;
 if ((data & 0xd0) == 0xd0) {
  cond = 'C';
 } else {
  cond = 'Z';
 }
 if (op->cond == R_ANAL_COND_EQ) {
  r_strbuf_setf (&op->esil, "%c,?{,sp,[2],pc,:=,2,sp,+=,}", cond);
 } else {
  r_strbuf_setf (&op->esil, "%c,!,?{,sp,[2],pc,:=,2,sp,+=,}", cond);
 }
}
