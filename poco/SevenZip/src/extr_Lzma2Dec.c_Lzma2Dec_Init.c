
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int decoder; void* needInitProp; void* needInitState; void* needInitDic; int state; } ;
typedef TYPE_1__ CLzma2Dec ;


 int LZMA2_STATE_CONTROL ;
 int LzmaDec_Init (int *) ;
 void* True ;

void Lzma2Dec_Init(CLzma2Dec *p)
{
  p->state = LZMA2_STATE_CONTROL;
  p->needInitDic = True;
  p->needInitState = True;
  p->needInitProp = True;
  LzmaDec_Init(&p->decoder);
}
