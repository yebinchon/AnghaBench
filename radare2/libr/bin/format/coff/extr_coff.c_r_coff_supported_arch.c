
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
bool r_coff_supported_arch(const ut8 *buf) {
 ut16 arch = *(ut16*)buf;
 switch (arch) {
 case 132:
 case 130:
 case 131:
 case 128:
 case 129:
 case 134:
 case 133:
  return 1;
 default:
  return 0;
 }
}
