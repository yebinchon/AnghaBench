
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* txid ;
struct TYPE_2__ {scalar_t__ nxip; void* xmax; void* xmin; } ;
typedef TYPE_1__ TxidSnapshot ;
typedef int StringInfo ;


 int TXID_SNAPSHOT_SIZE (int ) ;
 int appendBinaryStringInfo (int ,char*,int ) ;
 int makeStringInfo () ;

__attribute__((used)) static StringInfo
buf_init(txid xmin, txid xmax)
{
 TxidSnapshot snap;
 StringInfo buf;

 snap.xmin = xmin;
 snap.xmax = xmax;
 snap.nxip = 0;

 buf = makeStringInfo();
 appendBinaryStringInfo(buf, (char *) &snap, TXID_SNAPSHOT_SIZE(0));
 return buf;
}
