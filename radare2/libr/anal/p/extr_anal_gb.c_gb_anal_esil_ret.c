
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;


 int r_strbuf_append (int *,char*) ;

__attribute__((used)) static inline void gb_anal_esil_ret (RAnalOp *op)
{
 r_strbuf_append (&op->esil, "sp,[2],pc,:=,2,sp,+=");
}
