
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* Free ) (TYPE_2__*,int *) ;} ;
struct TYPE_5__ {int * buf; } ;
typedef TYPE_1__ CSeqInFilter ;


 TYPE_2__ g_Alloc ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static void SeqInFilter_Free(CSeqInFilter *p)
{
  if (p->buf)
  {
    g_Alloc.Free(&g_Alloc, p->buf);
    p->buf = ((void*)0);
  }
}
