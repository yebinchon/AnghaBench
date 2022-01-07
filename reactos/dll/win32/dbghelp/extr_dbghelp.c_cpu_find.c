
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu {scalar_t__ machine; } ;
typedef scalar_t__ DWORD ;


 struct cpu** dbghelp_cpus ;

struct cpu* cpu_find(DWORD machine)
{
    struct cpu** cpu;

    for (cpu = dbghelp_cpus ; *cpu; cpu++)
    {
        if (cpu[0]->machine == machine) return cpu[0];
    }
    return ((void*)0);
}
