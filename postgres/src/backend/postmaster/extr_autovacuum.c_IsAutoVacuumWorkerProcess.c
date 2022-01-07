
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int am_autovacuum_worker ;

bool
IsAutoVacuumWorkerProcess(void)
{
 return am_autovacuum_worker;
}
