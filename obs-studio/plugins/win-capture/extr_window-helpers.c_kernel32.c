
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HMODULE ;


 int * GetModuleHandleA (char*) ;

__attribute__((used)) static HMODULE kernel32(void)
{
 static HMODULE kernel32_handle = ((void*)0);
 if (!kernel32_handle)
  kernel32_handle = GetModuleHandleA("kernel32");
 return kernel32_handle;
}
