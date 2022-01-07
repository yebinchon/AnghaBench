
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* PVOID ;
typedef void* PFILESYSTEM_STATISTICS ;
typedef void* PEXFAT_STATISTICS ;


 int CreateHits ;
 int DUMP_VALUE (void*,int ) ;
 int DumpBase (void*,int ) ;
 int FailedCreates ;
 int NonCachedDiskReads ;
 int NonCachedDiskWrites ;
 int NonCachedReadBytes ;
 int NonCachedReads ;
 int NonCachedWriteBytes ;
 int NonCachedWrites ;
 int SuccessfulCreates ;
 int _T (char*) ;

__attribute__((used)) static void
DumpExFat(PVOID Statistics, PVOID Specific)
{
    PEXFAT_STATISTICS ExFat;
    PFILESYSTEM_STATISTICS Base;

    Base = Statistics;
    ExFat = Specific;


    DumpBase(Base, _T("EXFAT"));


    DUMP_VALUE(ExFat, CreateHits);
    DUMP_VALUE(ExFat, SuccessfulCreates);
    DUMP_VALUE(ExFat, FailedCreates);
    DUMP_VALUE(ExFat, NonCachedReads);
    DUMP_VALUE(ExFat, NonCachedReadBytes);
    DUMP_VALUE(ExFat, NonCachedWrites);
    DUMP_VALUE(ExFat, NonCachedWriteBytes);
    DUMP_VALUE(ExFat, NonCachedDiskReads);
    DUMP_VALUE(ExFat, NonCachedDiskWrites);
}
