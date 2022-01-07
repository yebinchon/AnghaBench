
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAsmOp ;
typedef int RAsm ;


 int gbAsm (int *,int *,char const*) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *r_op, const char *buf) {
 return gbAsm (a, r_op, buf);
}
