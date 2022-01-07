
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SizeT ;
typedef int SRes ;
typedef scalar_t__ ELzmaStatus ;
typedef int ECoderFinishMode ;
typedef int CLzma2Dec ;
typedef int Byte ;


 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ;
 int Lzma2Dec_DecodeToBuf (int *,int *,int *,int const*,int *,int ,scalar_t__*) ;

__attribute__((used)) static SRes Lzma2State_Code(void *pp, Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen,
    int srcWasFinished, ECoderFinishMode finishMode, int *wasFinished)
{
  ELzmaStatus status;

  SRes res = Lzma2Dec_DecodeToBuf((CLzma2Dec *)pp, dest, destLen, src, srcLen, finishMode, &status);
  srcWasFinished = srcWasFinished;
  *wasFinished = (status == LZMA_STATUS_FINISHED_WITH_MARK);
  return res;
}
