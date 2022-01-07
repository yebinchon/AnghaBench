
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CalculateCheckpointSegments () ;
 int max_wal_size_mb ;

void
assign_max_wal_size(int newval, void *extra)
{
 max_wal_size_mb = newval;
 CalculateCheckpointSegments();
}
