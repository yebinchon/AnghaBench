
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Props; } ;
typedef TYPE_1__ CSzCoderInfo ;


 int Buf_Init (int *) ;

void SzCoderInfo_Init(CSzCoderInfo *p)
{
  Buf_Init(&p->Props);
}
