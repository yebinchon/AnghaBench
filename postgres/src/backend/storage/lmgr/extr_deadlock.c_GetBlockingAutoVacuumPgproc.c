
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGPROC ;


 int * blocking_autovacuum_proc ;

PGPROC *
GetBlockingAutoVacuumPgproc(void)
{
 PGPROC *ptr;

 ptr = blocking_autovacuum_proc;
 blocking_autovacuum_proc = ((void*)0);

 return ptr;
}
