
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t size; size_t pos; int const* data; } ;
struct TYPE_7__ {int (* Free ) (TYPE_1__*,int const*) ;scalar_t__ (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CDynBuf ;
typedef int const Byte ;


 int memcpy (int const*,int const*,size_t) ;
 scalar_t__ stub1 (TYPE_1__*,size_t) ;
 int stub2 (TYPE_1__*,int const*) ;

int DynBuf_Write(CDynBuf *p, const Byte *buf, size_t size, ISzAlloc *alloc)
{
  if (size > p->size - p->pos)
  {
    size_t newSize = p->pos + size;
    Byte *data;
    newSize += newSize / 4;
    data = (Byte *)alloc->Alloc(alloc, newSize);
    if (data == 0)
      return 0;
    p->size = newSize;
    memcpy(data, p->data, p->pos);
    alloc->Free(alloc, p->data);
    p->data = data;
  }
  memcpy(p->data + p->pos, buf, size);
  p->pos += size;
  return 1;
}
