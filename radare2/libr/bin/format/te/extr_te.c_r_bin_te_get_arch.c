
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r_bin_te_obj_t {TYPE_1__* header; } ;
struct TYPE_2__ {int Machine; } ;
 char* strdup (char*) ;

char* r_bin_te_get_arch(struct r_bin_te_obj_t* bin) {
 char *arch;
 if (!bin) {
  return ((void*)0);
 }
 switch (bin->header->Machine) {
 case 138:
 case 137:
  arch = strdup ("alpha");
  break;
 case 136:
 case 129:
  arch = strdup ("arm");
  break;
 case 135:
  arch = strdup ("m68k");
  break;
 case 134:
 case 133:
 case 132:
 case 128:
  arch = strdup ("mips");
  break;
 case 131:
 case 130:
  arch = strdup ("ppc");
  break;
 default:
  arch = strdup ("x86");
 }
 return arch;
}
