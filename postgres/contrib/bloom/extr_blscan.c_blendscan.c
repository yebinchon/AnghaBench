
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * sign; } ;
struct TYPE_4__ {int opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BloomScanOpaque ;


 int pfree (int *) ;

void
blendscan(IndexScanDesc scan)
{
 BloomScanOpaque so = (BloomScanOpaque) scan->opaque;

 if (so->sign)
  pfree(so->sign);
 so->sign = ((void*)0);
}
