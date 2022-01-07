
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int HMODULE ;


 void* GetProcAddress (int ,char*) ;
 int deobfuscate_str (char*,int ) ;
 int strcpy (char*,char const*) ;

void *get_obfuscated_func(HMODULE module, const char *str, uint64_t val)
{
 char new_name[128];
 strcpy(new_name, str);
 deobfuscate_str(new_name, val);
 return GetProcAddress(module, new_name);
}
