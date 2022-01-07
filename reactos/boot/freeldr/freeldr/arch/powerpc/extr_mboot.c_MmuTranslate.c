
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int paddr_t ;


 int mmu_handle ;
 scalar_t__ ofproxy ;
 int ofw_callmethod_ret (char*,int ,int,int*,int) ;

paddr_t MmuTranslate(paddr_t possibly_virtual)
{
    if (ofproxy)
    {





        int args[2];
        args[0] = possibly_virtual;
        args[1] = 1;
        return (paddr_t)ofw_callmethod_ret("translate", mmu_handle, 2, args, 3);
    }
    else
    {

        return possibly_virtual;
    }
}
