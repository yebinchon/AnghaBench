
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ PageCount; } ;
typedef TYPE_1__ FREELDR_MEMORY_DESCRIPTOR ;


 TYPE_1__ const* BiosMemoryMap ;

const FREELDR_MEMORY_DESCRIPTOR*
ArcGetMemoryDescriptor(const FREELDR_MEMORY_DESCRIPTOR* Current)
{
    if (Current == ((void*)0))
    {
        return BiosMemoryMap;
    }
    else
    {
        Current++;
        if (Current->PageCount == 0) return ((void*)0);
        return Current;
    }
}
