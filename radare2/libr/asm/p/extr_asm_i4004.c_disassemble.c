
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAsmOp ;
typedef int RAsm ;


 int i4004dis (int *,int const*,int) ;

__attribute__((used)) static int disassemble (RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 return i4004dis (op,buf,len);
}
