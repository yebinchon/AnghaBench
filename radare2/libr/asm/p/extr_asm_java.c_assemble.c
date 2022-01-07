
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int pc; } ;
struct TYPE_5__ {int size; int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int r_java_assemble (int ,int *,char const*) ;
 scalar_t__ r_strbuf_get (int *) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *op, const char *input) {


 return op->size = r_java_assemble (a->pc, (ut8*)r_strbuf_get (&op->buf), input);
}
