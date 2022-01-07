
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArchiveHandle ;
typedef int ArchiveFormat ;
typedef int Archive ;


 int * _allocAH (char const*,int const,int ,int,int ,int ) ;
 int archModeRead ;
 int setupRestoreWorker ;

Archive *
OpenArchive(const char *FileSpec, const ArchiveFormat fmt)
{
 ArchiveHandle *AH = _allocAH(FileSpec, fmt, 0, 1, archModeRead, setupRestoreWorker);

 return (Archive *) AH;
}
