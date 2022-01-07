
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HANDLE ;


 int inject_library_obf (int ,int const*,char*,int,char*,int,char*,int,char*,int,char*,int) ;

__attribute__((used)) static inline int inject_library(HANDLE process, const wchar_t *dll)
{
 return inject_library_obf(process, dll, "E}mo|d[cefubWk~bgk",
      0x7c3371986918e8f6, "Rqbr`T{cnor{Bnlgwz",
      0x81bf81adc9456b35, "]`~wrl`KeghiCt",
      0xadc6a7b9acd73c9b, "Zh}{}agHzfd@{",
      0x57135138eb08ff1c, "DnafGhj}l~sX",
      0x350bfacdf81b2018);
}
