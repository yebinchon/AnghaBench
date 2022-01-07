
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HMODULE ;


 scalar_t__ GetModuleHandleA (char*) ;
 scalar_t__ LoadLibraryA (char*) ;
 int MAX_PATH ;
 int strcat (char*,char const*) ;
 int strcpy (char*,int ) ;
 int system_path ;

__attribute__((used)) static inline HMODULE load_system_library(const char *name)
{
 char base_path[MAX_PATH];
 HMODULE module;

 strcpy(base_path, system_path);
 strcat(base_path, "\\");
 strcat(base_path, name);

 module = GetModuleHandleA(base_path);
 if (module)
  return module;

 return LoadLibraryA(base_path);
}
