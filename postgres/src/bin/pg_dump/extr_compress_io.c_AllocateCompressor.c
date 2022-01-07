
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WriteFunc ;
struct TYPE_4__ {scalar_t__ comprAlg; int writeF; } ;
typedef TYPE_1__ CompressorState ;
typedef scalar_t__ CompressionAlgorithm ;


 scalar_t__ COMPR_ALG_LIBZ ;
 int InitCompressorZlib (TYPE_1__*,int) ;
 int ParseCompressionOption (int,scalar_t__*,int*) ;
 int fatal (char*) ;
 scalar_t__ pg_malloc0 (int) ;

CompressorState *
AllocateCompressor(int compression, WriteFunc writeF)
{
 CompressorState *cs;
 CompressionAlgorithm alg;
 int level;

 ParseCompressionOption(compression, &alg, &level);


 if (alg == COMPR_ALG_LIBZ)
  fatal("not built with zlib support");


 cs = (CompressorState *) pg_malloc0(sizeof(CompressorState));
 cs->writeF = writeF;
 cs->comprAlg = alg;
 return cs;
}
