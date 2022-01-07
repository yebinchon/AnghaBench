
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int KPF_HACKERS_BITS ;
 int KPF_OVERLOADED_BITS ;

__attribute__((used)) static const char *page_flag_type(uint64_t flag)
{
 if (flag & KPF_HACKERS_BITS)
  return "(r)";
 if (flag & KPF_OVERLOADED_BITS)
  return "(o)";
 return "   ";
}
