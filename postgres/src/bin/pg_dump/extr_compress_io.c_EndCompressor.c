
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ comprAlg; } ;
typedef TYPE_1__ CompressorState ;
typedef int ArchiveHandle ;


 scalar_t__ COMPR_ALG_LIBZ ;
 int EndCompressorZlib (int *,TYPE_1__*) ;
 int free (TYPE_1__*) ;

void
EndCompressor(ArchiveHandle *AH, CompressorState *cs)
{




 free(cs);
}
