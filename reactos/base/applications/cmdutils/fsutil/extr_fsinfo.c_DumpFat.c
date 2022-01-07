
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* PVOID ;
typedef void* PFILESYSTEM_STATISTICS ;
typedef void* PFAT_STATISTICS ;


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
DumpFat(PVOID Statistics, PVOID Specific)
{
    PFAT_STATISTICS Fat;
    PFILESYSTEM_STATISTICS Base;

    Base = Statistics;
    Fat = Specific;


    DumpBase(Base, _T("FAT"));


    DUMP_VALUE(Fat, CreateHits);
    DUMP_VALUE(Fat, SuccessfulCreates);
    DUMP_VALUE(Fat, FailedCreates);
    DUMP_VALUE(Fat, NonCachedReads);
    DUMP_VALUE(Fat, NonCachedReadBytes);
    DUMP_VALUE(Fat, NonCachedWrites);
    DUMP_VALUE(Fat, NonCachedWriteBytes);
    DUMP_VALUE(Fat, NonCachedDiskReads);
    DUMP_VALUE(Fat, NonCachedDiskWrites);
}
