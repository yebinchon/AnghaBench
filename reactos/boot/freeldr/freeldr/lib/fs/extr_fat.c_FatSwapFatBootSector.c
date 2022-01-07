
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PFAT_BOOTSECTOR ;


 int BootSectorMagic ;
 int BytesPerSector ;
 int HiddenSectors ;
 int NumberOfHeads ;
 int ReservedSectors ;
 int RootDirEntries ;
 int SD (int ,int ) ;
 int SW (int ,int ) ;
 int SectorsPerFat ;
 int SectorsPerTrack ;
 int TotalSectors ;
 int TotalSectorsBig ;
 int VolumeSerialNumber ;

VOID FatSwapFatBootSector(PFAT_BOOTSECTOR Obj)
{
    SW(Obj, BytesPerSector);
    SW(Obj, ReservedSectors);
    SW(Obj, RootDirEntries);
    SW(Obj, TotalSectors);
    SW(Obj, SectorsPerFat);
    SW(Obj, SectorsPerTrack);
    SW(Obj, NumberOfHeads);
    SD(Obj, HiddenSectors);
    SD(Obj, TotalSectorsBig);
    SD(Obj, VolumeSerialNumber);
    SW(Obj, BootSectorMagic);
}
