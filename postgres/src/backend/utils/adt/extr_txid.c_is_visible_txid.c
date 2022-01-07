
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32 ;
typedef scalar_t__ txid ;
struct TYPE_3__ {scalar_t__ xmin; scalar_t__ xmax; scalar_t__ nxip; scalar_t__* xip; } ;
typedef TYPE_1__ TxidSnapshot ;


 scalar_t__ USE_BSEARCH_IF_NXIP_GREATER ;
 void* bsearch (scalar_t__*,scalar_t__*,scalar_t__,int,int ) ;
 int cmp_txid ;

__attribute__((used)) static bool
is_visible_txid(txid value, const TxidSnapshot *snap)
{
 if (value < snap->xmin)
  return 1;
 else if (value >= snap->xmax)
  return 0;
 else
 {
  uint32 i;

  for (i = 0; i < snap->nxip; i++)
  {
   if (value == snap->xip[i])
    return 0;
  }
  return 1;
 }
}
