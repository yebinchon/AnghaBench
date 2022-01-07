
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cab_UBYTE ;
struct TYPE_5__ {int (* seek ) (int ,size_t,int ) ;int (* free ) (int *) ;int (* read ) (int ,int *,size_t) ;int * (* alloc ) (size_t) ;} ;
typedef int INT_PTR ;
typedef TYPE_1__ FDI_Int ;
typedef scalar_t__ BOOL ;


 int ERR (char*) ;
 scalar_t__ FALSE ;
 size_t FDI_getoffset (TYPE_1__*,int ) ;
 int SEEK_SET ;
 int TRACE (char*,TYPE_1__*,int ,long) ;
 scalar_t__ TRUE ;
 size_t strlen (char*) ;
 int * stub1 (size_t) ;
 int stub2 (int ,int *,size_t) ;
 int stub3 (int ,size_t,int ) ;
 int stub4 (int *) ;
 int stub5 (int *) ;
 int stub6 (int ,size_t,int ) ;

__attribute__((used)) static char *FDI_read_string(FDI_Int *fdi, INT_PTR hf, long cabsize)
{
  size_t len=256,
         base = FDI_getoffset(fdi, hf),
         maxlen = cabsize - base;
  BOOL ok = FALSE;
  unsigned int i;
  cab_UBYTE *buf = ((void*)0);

  TRACE("(fdi == %p, hf == %ld, cabsize == %ld)\n", fdi, hf, cabsize);

  do {
    if (len > maxlen) len = maxlen;
    if (!(buf = fdi->alloc(len))) break;
    if (!fdi->read(hf, buf, len)) break;


    for (i=0; i < len; i++) {
      if (!buf[i]) {ok=TRUE; break;}
    }

    if (!ok) {
      if (len == maxlen) {
        ERR("cabinet is truncated\n");
        break;
      }



      fdi->seek(hf, base, SEEK_SET);
      fdi->free(buf);
      buf = ((void*)0);
      len *= 2;
    }
  } while (!ok);

  if (!ok) {
    if (buf)
      fdi->free(buf);
    else
      ERR("out of memory!\n");
    return ((void*)0);
  }


  fdi->seek(hf, base + strlen((char *)buf) + 1, SEEK_SET);

  return (char *) buf;
}
