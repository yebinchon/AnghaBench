
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ address; scalar_t__ compressed; } ;
typedef TYPE_1__ dwarf2_section_t ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;

__attribute__((used)) static inline void dwarf2_fini_section(dwarf2_section_t* section)
{
    if (section->compressed)
        HeapFree(GetProcessHeap(), 0, (void*)section->address);
}
