
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* outStream; } ;
struct TYPE_10__ {int writeEndMark; TYPE_1__ rc; } ;
struct TYPE_8__ {int Write; } ;
struct TYPE_9__ {scalar_t__ overflow; scalar_t__ rem; TYPE_2__ funcTable; int * data; } ;
typedef scalar_t__ SizeT ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef int ICompressProgress ;
typedef TYPE_3__ CSeqOutStreamBuf ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_4__ CLzmaEnc ;
typedef int Byte ;


 scalar_t__ False ;
 scalar_t__ LzmaEnc_Encode2 (TYPE_4__*,int *) ;
 scalar_t__ LzmaEnc_MemPrepare (scalar_t__,int const*,scalar_t__,int ,int *,int *) ;
 int LzmaEnc_SetInputBuf (TYPE_4__*,int const*,scalar_t__) ;
 int MyWrite ;
 scalar_t__ SZ_ERROR_OUTPUT_EOF ;
 scalar_t__ SZ_OK ;

SRes LzmaEnc_MemEncode(CLzmaEncHandle pp, Byte *dest, SizeT *destLen, const Byte *src, SizeT srcLen,
    int writeEndMark, ICompressProgress *progress, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  SRes res;
  CLzmaEnc *p = (CLzmaEnc *)pp;

  CSeqOutStreamBuf outStream;

  LzmaEnc_SetInputBuf(p, src, srcLen);

  outStream.funcTable.Write = MyWrite;
  outStream.data = dest;
  outStream.rem = *destLen;
  outStream.overflow = False;

  p->writeEndMark = writeEndMark;

  p->rc.outStream = &outStream.funcTable;
  res = LzmaEnc_MemPrepare(pp, src, srcLen, 0, alloc, allocBig);
  if (res == SZ_OK)
    res = LzmaEnc_Encode2(p, progress);

  *destLen -= outStream.rem;
  if (outStream.overflow)
    return SZ_ERROR_OUTPUT_EOF;
  return res;
}
