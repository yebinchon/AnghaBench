
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTAB ;


 int Assert (int ) ;
 int HistoricSnapshotActive () ;
 int * tuplecid_data ;

HTAB *
HistoricSnapshotGetTupleCids(void)
{
 Assert(HistoricSnapshotActive());
 return tuplecid_data;
}
