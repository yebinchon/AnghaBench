
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UInt64 ;
typedef int UInt32 ;
struct TYPE_6__ {int (* Free ) (TYPE_1__*,int *) ;int * (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ ISzAlloc ;
typedef int ILookInStream ;
typedef int CXzStream ;
typedef int Byte ;


 scalar_t__ LookInStream_Read2 (int *,int *,size_t,scalar_t__) ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_ERROR_UNSUPPORTED ;
 scalar_t__ SZ_OK ;
 scalar_t__ Xz_ReadIndex2 (int *,int *,size_t,TYPE_1__*) ;
 int * stub1 (TYPE_1__*,size_t) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static SRes Xz_ReadIndex(CXzStream *p, ILookInStream *stream, UInt64 indexSize, ISzAlloc *alloc)
{
  SRes res;
  size_t size;
  Byte *buf;
  if (indexSize > ((UInt32)1 << 31))
    return SZ_ERROR_UNSUPPORTED;
  size = (size_t)indexSize;
  if (size != indexSize)
    return SZ_ERROR_UNSUPPORTED;
  buf = alloc->Alloc(alloc, size);
  if (buf == 0)
    return SZ_ERROR_MEM;
  res = LookInStream_Read2(stream, buf, size, SZ_ERROR_UNSUPPORTED);
  if (res == SZ_OK)
    res = Xz_ReadIndex2(p, buf, size, alloc);
  alloc->Free(alloc, buf);
  return res;
}
