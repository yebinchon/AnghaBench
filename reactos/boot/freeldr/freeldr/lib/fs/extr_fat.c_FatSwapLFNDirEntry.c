
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {void** Name11_12; void** Name5_10; void** Name0_4; } ;
typedef TYPE_1__* PLFN_DIRENTRY ;


 int SW (TYPE_1__*,int ) ;
 void* SWAPW (void*) ;
 int StartCluster ;

VOID FatSwapLFNDirEntry(PLFN_DIRENTRY Obj)
{
    int i;
    SW(Obj, StartCluster);
    for(i = 0; i < 5; i++)
        Obj->Name0_4[i] = SWAPW(Obj->Name0_4[i]);
    for(i = 0; i < 6; i++)
        Obj->Name5_10[i] = SWAPW(Obj->Name5_10[i]);
    for(i = 0; i < 2; i++)
        Obj->Name11_12[i] = SWAPW(Obj->Name11_12[i]);
}
