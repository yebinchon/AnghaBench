
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwSize; } ;
typedef TYPE_1__* LPDDSURFACEDESC2 ;
typedef int LPDDSURFACEDESC ;
typedef int DDSURFACEDESC2 ;
typedef int DDSURFACEDESC ;


 int RtlCopyMemory (TYPE_1__*,int ,int) ;
 int RtlZeroMemory (TYPE_1__*,int) ;

void CopyDDSurfDescToDDSurfDesc2(LPDDSURFACEDESC2 dst_pDesc, LPDDSURFACEDESC src_pDesc)
{
    RtlZeroMemory(dst_pDesc,sizeof(DDSURFACEDESC2));
    RtlCopyMemory(dst_pDesc,src_pDesc,sizeof(DDSURFACEDESC));
    dst_pDesc->dwSize = sizeof(DDSURFACEDESC2);
}
