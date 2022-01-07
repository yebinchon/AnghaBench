
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * HistoricSnapshot ;

bool
HistoricSnapshotActive(void)
{
 return HistoricSnapshot != ((void*)0);
}
