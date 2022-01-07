
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DEVVTBL ;


 int * GetPxeStructure () ;
 int const PxeVtbl ;

const DEVVTBL* PxeMount(ULONG DeviceId)
{
    if (GetPxeStructure() == ((void*)0))
        return ((void*)0);
    return &PxeVtbl;
}
