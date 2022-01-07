
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SetupWorkerPtrType ;
typedef int ArchiveMode ;
typedef int ArchiveHandle ;
typedef int ArchiveFormat ;
typedef int Archive ;


 int * _allocAH (char const*,int const,int const,int,int ,int ) ;

Archive *
CreateArchive(const char *FileSpec, const ArchiveFormat fmt,
     const int compression, bool dosync, ArchiveMode mode,
     SetupWorkerPtrType setupDumpWorker)

{
 ArchiveHandle *AH = _allocAH(FileSpec, fmt, compression, dosync,
         mode, setupDumpWorker);

 return (Archive *) AH;
}
