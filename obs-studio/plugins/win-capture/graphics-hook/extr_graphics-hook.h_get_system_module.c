
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 int MAX_PATH ;
 int strcat (char*,char const*) ;
 int strcpy (char*,int ) ;
 int system_path ;

__attribute__((used)) static inline HMODULE get_system_module(const char *module)
{
 char base_path[MAX_PATH];

 strcpy(base_path, system_path);
 strcat(base_path, "\\");
 strcat(base_path, module);
 return GetModuleHandleA(base_path);
}
