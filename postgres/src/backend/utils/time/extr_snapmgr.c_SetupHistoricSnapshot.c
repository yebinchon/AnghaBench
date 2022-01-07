
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Snapshot ;
typedef int HTAB ;


 int Assert (int ) ;
 int * HistoricSnapshot ;
 int * tuplecid_data ;

void
SetupHistoricSnapshot(Snapshot historic_snapshot, HTAB *tuplecids)
{
 Assert(historic_snapshot != ((void*)0));


 HistoricSnapshot = historic_snapshot;


 tuplecid_data = tuplecids;
}
