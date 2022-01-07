
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int check; scalar_t__ processed; } ;
typedef TYPE_1__ CSeqCheckInStream ;


 int XzCheck_Init (int *,int) ;

void SeqCheckInStream_Init(CSeqCheckInStream *p, int mode)
{
  p->processed = 0;
  XzCheck_Init(&p->check, mode);
}
