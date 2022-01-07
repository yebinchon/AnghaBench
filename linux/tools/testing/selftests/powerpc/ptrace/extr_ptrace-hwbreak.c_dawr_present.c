
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;


 int PPC_DEBUG_FEATURE_DATA_BP_DAWR ;
 TYPE_1__ dbginfo ;

__attribute__((used)) static bool dawr_present(void)
{
 return !!(dbginfo.features & PPC_DEBUG_FEATURE_DATA_BP_DAWR);
}
