
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RBinJavaField ;


 scalar_t__ check_addr_less_end (int *,int ) ;
 int check_addr_less_start (int *,int ) ;

__attribute__((used)) static int check_addr_in_code (RBinJavaField *method, ut64 addr) {
 return !check_addr_less_start (method, addr) && check_addr_less_end ( method, addr);

}
