
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int p; int (* Init ) (int ) ;int (* SetProps ) (int ,int ,int ,TYPE_3__*) ;} ;
struct TYPE_12__ {scalar_t__ (* Alloc ) (TYPE_3__*,int ) ;} ;
struct TYPE_11__ {TYPE_8__ StateCoder; scalar_t__ srcWasFinished; scalar_t__ endPos; scalar_t__ curPos; scalar_t__ buf; } ;
struct TYPE_10__ {int propsSize; int props; int id; } ;
typedef int SRes ;
typedef TYPE_1__ CXzFilter ;
typedef TYPE_2__ CSeqInFilter ;


 int BraState_SetFromMethod (TYPE_8__*,int ,int,TYPE_3__*) ;
 int FILTER_BUF_SIZE ;
 int RINOK (int ) ;
 int SZ_ERROR_MEM ;
 int S_OK ;
 TYPE_3__ g_Alloc ;
 scalar_t__ stub1 (TYPE_3__*,int ) ;
 int stub2 (int ,int ,int ,TYPE_3__*) ;
 int stub3 (int ) ;

__attribute__((used)) static SRes SeqInFilter_Init(CSeqInFilter *p, const CXzFilter *props)
{
  if (!p->buf)
  {
    p->buf = g_Alloc.Alloc(&g_Alloc, FILTER_BUF_SIZE);
    if (!p->buf)
      return SZ_ERROR_MEM;
  }
  p->curPos = p->endPos = 0;
  p->srcWasFinished = 0;
  RINOK(BraState_SetFromMethod(&p->StateCoder, props->id, 1, &g_Alloc));
  RINOK(p->StateCoder.SetProps(p->StateCoder.p, props->props, props->propsSize, &g_Alloc));
  p->StateCoder.Init(p->StateCoder.p);
  return S_OK;
}
