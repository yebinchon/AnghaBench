
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r_bin_te_obj_t {TYPE_1__* header; } ;
struct TYPE_2__ {int Subsystem; } ;
 char* strdup (char*) ;

char* r_bin_te_get_os(struct r_bin_te_obj_t* bin) {
 char *os;
 if (!bin) {
  return ((void*)0);
 }

 switch (bin->header->Subsystem) {
 case 133:
  os = strdup ("native");
  break;
 case 129:
 case 130:
 case 131:
  os = strdup ("windows");
  break;
 case 132:
  os = strdup ("posix");
  break;
 case 137:
 case 136:
 case 134:
 case 135:
  os = strdup ("efi");
  break;
 case 128:
  os = strdup ("xbox");
  break;
 default:

  os = strdup ("windows");
 }
 return os;
}
