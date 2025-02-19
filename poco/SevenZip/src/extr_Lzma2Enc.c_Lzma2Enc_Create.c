
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int mtCoder; TYPE_1__* coders; TYPE_2__* allocBig; TYPE_2__* alloc; scalar_t__ outBuf; int props; } ;
struct TYPE_10__ {scalar_t__ (* Alloc ) (TYPE_2__*,int) ;} ;
struct TYPE_9__ {scalar_t__ enc; } ;
typedef TYPE_2__ ISzAlloc ;
typedef TYPE_3__* CLzma2EncHandle ;
typedef TYPE_3__ CLzma2Enc ;


 int Lzma2EncProps_Init (int *) ;
 int Lzma2EncProps_Normalize (int *) ;
 int MtCoder_Construct (int *) ;
 unsigned int NUM_MT_CODER_THREADS_MAX ;
 scalar_t__ stub1 (TYPE_2__*,int) ;

CLzma2EncHandle Lzma2Enc_Create(ISzAlloc *alloc, ISzAlloc *allocBig)
{
  CLzma2Enc *p = (CLzma2Enc *)alloc->Alloc(alloc, sizeof(CLzma2Enc));
  if (p == 0)
    return ((void*)0);
  Lzma2EncProps_Init(&p->props);
  Lzma2EncProps_Normalize(&p->props);
  p->outBuf = 0;
  p->alloc = alloc;
  p->allocBig = allocBig;
  {
    unsigned i;
    for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
      p->coders[i].enc = 0;
  }

  MtCoder_Construct(&p->mtCoder);


  return p;
}
