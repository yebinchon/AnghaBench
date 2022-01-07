
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int info ;
struct TYPE_3__ {int SizeOfImage; } ;
typedef TYPE_1__ MODULEINFO ;
typedef int HMODULE ;


 int GetCurrentProcess () ;
 int GetModuleInformation (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static inline uint32_t module_size(HMODULE module)
{
 MODULEINFO info;
 bool success = !!GetModuleInformation(GetCurrentProcess(), module,
           &info, sizeof(info));
 return success ? info.SizeOfImage : 0;
}
