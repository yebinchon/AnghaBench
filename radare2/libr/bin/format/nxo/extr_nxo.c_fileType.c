
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int memcmp (int const*,char*,int) ;

const char *fileType(const ut8 *buf) {
 if (!memcmp (buf, "NRO0", 4)) {
  return "nro0";
 }
 if (!memcmp (buf, "NRR0", 4)) {
  return "nrr0";
 }
 if (!memcmp (buf, "MOD0", 4)) {
  return "mod0";
 }
 if (!memcmp (buf, "NSO0", 4)) {
  return "nso0";
 }
 return ((void*)0);
}
