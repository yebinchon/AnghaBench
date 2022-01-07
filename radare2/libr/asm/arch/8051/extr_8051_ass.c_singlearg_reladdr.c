
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int relative_address (int const,int ,int *) ;
 int to_address (char const*,int *) ;

__attribute__((used)) static bool singlearg_reladdr(ut8 const firstbyte, char const* arg
 , ut16 const pc, ut8 **out)
{
 ut16 address;
 if (!to_address (arg, &address)
  || !relative_address (pc, address, (*out)+1)) {
  return 0;
 }
 (*out)[0] = firstbyte;
 *out += 2;
 return 1;
}
