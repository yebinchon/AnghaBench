
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* PVOID ;
typedef void* PNTFS_STATISTICS ;
typedef void* PFILESYSTEM_STATISTICS ;


 int BitmapReadBytes ;
 int BitmapReads ;
 int BitmapWriteBytes ;
 int BitmapWrites ;
 int DUMP_VALUE (void*,int ) ;
 int DumpBase (void*,int ) ;
 int LogFileReadBytes ;
 int LogFileReads ;
 int LogFileWriteBytes ;
 int LogFileWrites ;
 int Mft2WriteBytes ;
 int Mft2Writes ;
 int MftBitmapReadBytes ;
 int MftBitmapReads ;
 int MftBitmapWriteBytes ;
 int MftBitmapWrites ;
 int MftReadBytes ;
 int MftReads ;
 int MftWriteBytes ;
 int MftWrites ;
 int RootIndexReadBytes ;
 int RootIndexReads ;
 int RootIndexWriteBytes ;
 int RootIndexWrites ;
 int UserIndexReadBytes ;
 int UserIndexReads ;
 int UserIndexWriteBytes ;
 int UserIndexWrites ;
 int _T (char*) ;

__attribute__((used)) static void
DumpNtfs(PVOID Statistics, PVOID Specific)
{
    PNTFS_STATISTICS Ntfs;
    PFILESYSTEM_STATISTICS Base;

    Base = Statistics;
    Ntfs = Specific;


    DumpBase(Base, _T("NTFS"));


    DUMP_VALUE(Ntfs, MftReads);
    DUMP_VALUE(Ntfs, MftReadBytes);
    DUMP_VALUE(Ntfs, MftWrites);
    DUMP_VALUE(Ntfs, MftWriteBytes);
    DUMP_VALUE(Ntfs, Mft2Writes);
    DUMP_VALUE(Ntfs, Mft2WriteBytes);
    DUMP_VALUE(Ntfs, RootIndexReads);
    DUMP_VALUE(Ntfs, RootIndexReadBytes);
    DUMP_VALUE(Ntfs, RootIndexWrites);
    DUMP_VALUE(Ntfs, RootIndexWriteBytes);
    DUMP_VALUE(Ntfs, BitmapReads);
    DUMP_VALUE(Ntfs, BitmapReadBytes);
    DUMP_VALUE(Ntfs, BitmapWrites);
    DUMP_VALUE(Ntfs, BitmapWriteBytes);
    DUMP_VALUE(Ntfs, MftBitmapReads);
    DUMP_VALUE(Ntfs, MftBitmapReadBytes);
    DUMP_VALUE(Ntfs, MftBitmapWrites);
    DUMP_VALUE(Ntfs, MftBitmapWriteBytes);
    DUMP_VALUE(Ntfs, UserIndexReads);
    DUMP_VALUE(Ntfs, UserIndexReadBytes);
    DUMP_VALUE(Ntfs, UserIndexWrites);
    DUMP_VALUE(Ntfs, UserIndexWriteBytes);
    DUMP_VALUE(Ntfs, LogFileReads);
    DUMP_VALUE(Ntfs, LogFileReadBytes);
    DUMP_VALUE(Ntfs, LogFileWrites);
    DUMP_VALUE(Ntfs, LogFileWriteBytes);
}
