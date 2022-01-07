
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RBinJavaField ;


 scalar_t__ r_bin_java_get_method_code_size (int *) ;

__attribute__((used)) static int check_addr_less_end (RBinJavaField *method, ut64 addr) {
 ut64 end = r_bin_java_get_method_code_size (method);
 return (addr < end);
}
