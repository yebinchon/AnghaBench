
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PFILESYSTEM_STATISTICS ;


 int MetaDataDiskReads ;
 int MetaDataDiskWrites ;
 int MetaDataReadBytes ;
 int MetaDataReads ;
 int MetaDataWriteBytes ;
 int MetaDataWrites ;
 int SUM_VALUE (int ,int ,int ) ;
 int UserDiskReads ;
 int UserDiskWrites ;
 int UserFileReadBytes ;
 int UserFileReads ;
 int UserFileWriteBytes ;
 int UserFileWrites ;

inline void
SumBase(PFILESYSTEM_STATISTICS Base, PFILESYSTEM_STATISTICS NextBase)
{

    SUM_VALUE(Base, NextBase, UserFileReads);
    SUM_VALUE(Base, NextBase, UserFileReadBytes);
    SUM_VALUE(Base, NextBase, UserDiskReads);
    SUM_VALUE(Base, NextBase, UserFileWrites);
    SUM_VALUE(Base, NextBase, UserFileWriteBytes);
    SUM_VALUE(Base, NextBase, UserDiskWrites);
    SUM_VALUE(Base, NextBase, MetaDataReads);
    SUM_VALUE(Base, NextBase, MetaDataReadBytes);
    SUM_VALUE(Base, NextBase, MetaDataDiskReads);
    SUM_VALUE(Base, NextBase, MetaDataWrites);
    SUM_VALUE(Base, NextBase, MetaDataWriteBytes);
    SUM_VALUE(Base, NextBase, MetaDataDiskWrites);
}
