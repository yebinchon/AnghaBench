
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r_bin_te_obj_t {TYPE_1__* header; } ;
struct TYPE_2__ {int Subsystem; } ;
 char* strdup (char*) ;

char* r_bin_te_get_subsystem(struct r_bin_te_obj_t* bin) {
 char *subsystem;

 if (!bin) {
  return ((void*)0);
 }
 switch (bin->header->Subsystem) {
 case 133:
  subsystem = strdup ("Native");
  break;
 case 129:
  subsystem = strdup ("Windows GUI");
  break;
 case 130:
  subsystem = strdup ("Windows CUI");
  break;
 case 132:
  subsystem = strdup ("POSIX CUI");
  break;
 case 131:
  subsystem = strdup ("Windows CE GUI");
  break;
 case 137:
  subsystem = strdup ("EFI Application");
  break;
 case 136:
  subsystem = strdup ("EFI Boot Service Driver");
  break;
 case 134:
  subsystem = strdup ("EFI Runtime Driver");
  break;
 case 135:
  subsystem = strdup ("EFI ROM");
  break;
 case 128:
  subsystem = strdup ("XBOX");
  break;
 default:
  subsystem = strdup ("Unknown");
 }
 return subsystem;
}
