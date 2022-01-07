
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * HistoricSnapshot ;
 int * tuplecid_data ;

void
TeardownHistoricSnapshot(bool is_error)
{
 HistoricSnapshot = ((void*)0);
 tuplecid_data = ((void*)0);
}
