
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int txid ;
struct TYPE_3__ {int nxip; int xip; } ;
typedef TYPE_1__ TxidSnapshot ;


 int cmp_txid ;
 int qsort (int ,int,int,int ) ;
 int qunique (int ,int,int,int ) ;

__attribute__((used)) static void
sort_snapshot(TxidSnapshot *snap)
{
 if (snap->nxip > 1)
 {
  qsort(snap->xip, snap->nxip, sizeof(txid), cmp_txid);
  snap->nxip = qunique(snap->xip, snap->nxip, sizeof(txid), cmp_txid);
 }
}
