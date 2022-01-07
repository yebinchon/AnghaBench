
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int pc; } ;
struct TYPE_5__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 char* mal_dis (int ,int const*,int) ;

__attribute__((used)) static int __disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 const char *opstr = mal_dis (a->pc, buf, len);
 return op->size = opstr? 1: 0;
}
