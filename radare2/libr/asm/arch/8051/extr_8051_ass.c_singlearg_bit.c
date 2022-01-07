
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int address_bit (char const*,int *) ;

__attribute__((used)) static bool singlearg_bit(ut8 const firstbyte, char const* arg, ut8 **out) {
 ut8 address;
 if (!address_bit (arg, &address)) {
  return 0;
 }
 (*out)[0] = firstbyte;
 (*out)[1] = address;
 *out += 2;
 return 1;
}
