
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 char* strchr (char const*,char) ;

__attribute__((used)) static ut8 get_register_id(char reg) {
 const char *regs = "ABCXYZIJ";
 const char *p = strchr (regs, reg);
 return p? (int)(size_t)(p-regs): 0;
}
