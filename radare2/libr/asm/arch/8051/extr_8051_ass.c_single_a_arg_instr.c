
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 scalar_t__ r_str_casecmp (char*,char const*) ;
 int single_byte_instr (int const,int **) ;

__attribute__((used)) static bool single_a_arg_instr(ut8 const firstbyte, char const*arg
 , ut8 **out)
{
 if (r_str_casecmp ("a", arg)) {
  return 0;
 }
 return single_byte_instr (firstbyte, out);
}
