
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef short ut16 ;


 char** regs ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int valPrint(char *out, ut8 type, ut16 value) {
 if (type <= 0x07) return sprintf(out, "%s", regs[type]);
 if (type <= 0x0f) return sprintf(out, "[%s]", regs[type - 0x08]);
 if (type <= 0x17) return sprintf(out, "[%s + %#hx]", regs[type - 0x10], value);
 if (type <= 0x1d) return sprintf(out, "%s", regs[type - 0x18 + 0x08]);
 if (type == 0x1e) return sprintf(out, "[%#hx]", value);
 if (type == 0x1f) return sprintf(out, "%#hx", value);
 return sprintf(out, "%#hx", (short)(type - 0x20));
}
