
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int comprAlg; } ;
typedef TYPE_1__ CompressorState ;
typedef int ArchiveHandle ;




 int WriteDataToArchiveNone (int *,TYPE_1__*,void const*,size_t) ;
 int WriteDataToArchiveZlib (int *,TYPE_1__*,void const*,size_t) ;
 int fatal (char*) ;

void
WriteDataToArchive(ArchiveHandle *AH, CompressorState *cs,
       const void *data, size_t dLen)
{
 switch (cs->comprAlg)
 {
  case 129:



   fatal("not built with zlib support");

   break;
  case 128:
   WriteDataToArchiveNone(AH, cs, data, dLen);
   break;
 }
 return;
}
