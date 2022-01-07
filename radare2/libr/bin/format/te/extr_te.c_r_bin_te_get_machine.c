
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r_bin_te_obj_t {TYPE_1__* header; } ;
struct TYPE_2__ {int Machine; } ;
 char* strdup (char*) ;

char* r_bin_te_get_machine(struct r_bin_te_obj_t* bin) {
 char *machine;
 if (!bin) {
  return ((void*)0);
 }
 switch (bin->header->Machine) {
 case 155:
  machine = strdup ("Alpha");
  break;
 case 154:
  machine = strdup ("Alpha 64");
  break;
 case 153:
  machine = strdup ("AM33");
  break;
 case 152:
  machine = strdup ("AMD 64");
  break;
 case 151:
  machine = strdup ("ARM");
  break;
 case 150:
  machine = strdup ("CEE");
  break;
 case 149:
  machine = strdup ("CEF");
  break;
 case 148:
  machine = strdup ("EBC");
  break;
 case 147:
  machine = strdup ("i386");
  break;
 case 146:
  machine = strdup ("ia64");
  break;
 case 145:
  machine = strdup ("M32R");
  break;
 case 144:
  machine = strdup ("M68K");
  break;
 case 143:
  machine = strdup ("Mips 16");
  break;
 case 142:
  machine = strdup ("Mips FPU");
  break;
 case 141:
  machine = strdup ("Mips FPU 16");
  break;
 case 140:
  machine = strdup ("PowerPC");
  break;
 case 139:
  machine = strdup ("PowerPC FP");
  break;
 case 138:
  machine = strdup ("R10000");
  break;
 case 137:
  machine = strdup ("R3000");
  break;
 case 136:
  machine = strdup ("R4000");
  break;
 case 135:
  machine = strdup ("SH3");
  break;
 case 134:
  machine = strdup ("SH3DSP");
  break;
 case 133:
  machine = strdup ("SH3E");
  break;
 case 132:
  machine = strdup ("SH4");
  break;
 case 131:
  machine = strdup ("SH5");
  break;
 case 130:
  machine = strdup ("Thumb");
  break;
 case 129:
  machine = strdup ("Tricore");
  break;
 case 128:
  machine = strdup ("WCE Mips V2");
  break;
 default:
  machine = strdup ("unknown");
 }
 return machine;
}
