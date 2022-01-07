
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PFAT32_BOOTSECTOR ;


 int BackupBootSector ;
 int BootSectorMagic ;
 int BytesPerSector ;
 int ExtendedFlags ;
 int FileSystemVersion ;
 int FsInfo ;
 int HiddenSectors ;
 int NumberOfHeads ;
 int ReservedSectors ;
 int RootDirEntries ;
 int RootDirStartCluster ;
 int SD (int ,int ) ;
 int SW (int ,int ) ;
 int SectorsPerFat ;
 int SectorsPerFatBig ;
 int TotalSectors ;
 int TotalSectorsBig ;
 int VolumeSerialNumber ;

VOID FatSwapFat32BootSector(PFAT32_BOOTSECTOR Obj)
{
    SW(Obj, BytesPerSector);
    SW(Obj, ReservedSectors);
    SW(Obj, RootDirEntries);
    SW(Obj, TotalSectors);
    SW(Obj, SectorsPerFat);
    SW(Obj, NumberOfHeads);
    SD(Obj, HiddenSectors);
    SD(Obj, TotalSectorsBig);
    SD(Obj, SectorsPerFatBig);
    SW(Obj, ExtendedFlags);
    SW(Obj, FileSystemVersion);
    SD(Obj, RootDirStartCluster);
    SW(Obj, FsInfo);
    SW(Obj, BackupBootSector);
    SD(Obj, VolumeSerialNumber);
    SW(Obj, BootSectorMagic);
}
