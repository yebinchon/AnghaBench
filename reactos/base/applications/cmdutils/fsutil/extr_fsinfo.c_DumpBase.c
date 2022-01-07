
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int PFILESYSTEM_STATISTICS ;


 int DUMP_VALUE (int ,int ) ;
 int MetaDataDiskReads ;
 int MetaDataDiskWrites ;
 int MetaDataReadBytes ;
 int MetaDataReads ;
 int MetaDataWriteBytes ;
 int MetaDataWrites ;
 int UserDiskReads ;
 int UserDiskWrites ;
 int UserFileReadBytes ;
 int UserFileReads ;
 int UserFileWriteBytes ;
 int UserFileWrites ;
 int _T (char*) ;
 int _ftprintf (int ,int ,...) ;
 int stdout ;

__attribute__((used)) static void
DumpBase(PFILESYSTEM_STATISTICS Base, TCHAR * Name)
{

    _ftprintf(stdout, _T("File system type: %s\n\n"), Name);


    DUMP_VALUE(Base, UserFileReads);
    DUMP_VALUE(Base, UserFileReadBytes);
    DUMP_VALUE(Base, UserDiskReads);
    DUMP_VALUE(Base, UserFileWrites);
    DUMP_VALUE(Base, UserFileWriteBytes);
    DUMP_VALUE(Base, UserDiskWrites);
    DUMP_VALUE(Base, MetaDataReads);
    DUMP_VALUE(Base, MetaDataReadBytes);
    DUMP_VALUE(Base, MetaDataDiskReads);
    DUMP_VALUE(Base, MetaDataWrites);
    DUMP_VALUE(Base, MetaDataWriteBytes);
    DUMP_VALUE(Base, MetaDataDiskWrites);

    _ftprintf(stdout, _T("\n"));
}
