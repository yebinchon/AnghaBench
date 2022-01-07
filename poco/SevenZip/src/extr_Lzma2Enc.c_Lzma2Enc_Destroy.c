
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int alloc; scalar_t__ outBuf; int mtCoder; int allocBig; TYPE_1__* coders; } ;
struct TYPE_3__ {scalar_t__ enc; } ;
typedef TYPE_1__ CLzma2EncInt ;
typedef scalar_t__ CLzma2EncHandle ;
typedef TYPE_2__ CLzma2Enc ;


 int IAlloc_Free (int ,scalar_t__) ;
 int LzmaEnc_Destroy (scalar_t__,int ,int ) ;
 int MtCoder_Destruct (int *) ;
 unsigned int NUM_MT_CODER_THREADS_MAX ;

void Lzma2Enc_Destroy(CLzma2EncHandle pp)
{
  CLzma2Enc *p = (CLzma2Enc *)pp;
  unsigned i;
  for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
  {
    CLzma2EncInt *t = &p->coders[i];
    if (t->enc)
    {
      LzmaEnc_Destroy(t->enc, p->alloc, p->allocBig);
      t->enc = 0;
    }
  }


  MtCoder_Destruct(&p->mtCoder);


  IAlloc_Free(p->alloc, p->outBuf);
  IAlloc_Free(p->alloc, pp);
}
