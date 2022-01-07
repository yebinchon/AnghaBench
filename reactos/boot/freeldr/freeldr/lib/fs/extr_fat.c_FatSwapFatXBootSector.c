
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PFATX_BOOTSECTOR ;


 int NumberOfFats ;
 int SD (int ,int ) ;
 int SW (int ,int ) ;
 int SectorsPerCluster ;
 int VolumeSerialNumber ;

VOID FatSwapFatXBootSector(PFATX_BOOTSECTOR Obj)
{
    SD(Obj, VolumeSerialNumber);
    SD(Obj, SectorsPerCluster);
    SW(Obj, NumberOfFats);
}
