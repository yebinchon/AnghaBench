
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CompressionAlgorithm ;


 int COMPR_ALG_LIBZ ;
 int COMPR_ALG_NONE ;
 int Z_DEFAULT_COMPRESSION ;
 int fatal (char*,int) ;

__attribute__((used)) static void
ParseCompressionOption(int compression, CompressionAlgorithm *alg, int *level)
{
 if (compression == Z_DEFAULT_COMPRESSION ||
  (compression > 0 && compression <= 9))
  *alg = COMPR_ALG_LIBZ;
 else if (compression == 0)
  *alg = COMPR_ALG_NONE;
 else
 {
  fatal("invalid compression code: %d", compression);
  *alg = COMPR_ALG_NONE;
 }


 if (level)
  *level = compression;
}
