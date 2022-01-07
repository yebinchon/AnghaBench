
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RBinJavaObj ;


 int java_print_opcode (int *,int ,int const,int const*,int,char*,int) ;

int r_java_disasm(RBinJavaObj *obj, ut64 addr, const ut8 *bytes, int len, char *output, int outlen) {

 return java_print_opcode (obj, addr, bytes[0], bytes, len, output, outlen);
}
