
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvenc_data {int dummy; } ;
typedef scalar_t__ HMODULE ;
typedef scalar_t__ HANDLE ;


 scalar_t__ GetModuleHandleA (char const*) ;
 scalar_t__ LoadLibraryA (char const*) ;
 int error (char*,char const*) ;

__attribute__((used)) static HANDLE get_lib(struct nvenc_data *enc, const char *lib)
{
 HMODULE mod = GetModuleHandleA(lib);
 if (mod)
  return mod;

 mod = LoadLibraryA(lib);
 if (!mod)
  error("Failed to load %s", lib);
 return mod;
}
