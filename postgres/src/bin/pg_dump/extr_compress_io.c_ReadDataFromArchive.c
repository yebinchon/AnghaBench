
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReadFunc ;
typedef scalar_t__ CompressionAlgorithm ;
typedef int ArchiveHandle ;


 scalar_t__ COMPR_ALG_LIBZ ;
 scalar_t__ COMPR_ALG_NONE ;
 int ParseCompressionOption (int,scalar_t__*,int *) ;
 int ReadDataFromArchiveNone (int *,int ) ;
 int ReadDataFromArchiveZlib (int *,int ) ;
 int fatal (char*) ;

void
ReadDataFromArchive(ArchiveHandle *AH, int compression, ReadFunc readF)
{
 CompressionAlgorithm alg;

 ParseCompressionOption(compression, &alg, ((void*)0));

 if (alg == COMPR_ALG_NONE)
  ReadDataFromArchiveNone(AH, readF);
 if (alg == COMPR_ALG_LIBZ)
 {



  fatal("not built with zlib support");

 }
}
