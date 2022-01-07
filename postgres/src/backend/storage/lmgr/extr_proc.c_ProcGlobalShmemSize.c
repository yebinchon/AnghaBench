
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slock_t ;
typedef int Size ;
typedef int PROC_HDR ;
typedef int PGXACT ;
typedef int PGPROC ;


 int MaxBackends ;
 int NUM_AUXILIARY_PROCS ;
 int add_size (int ,int) ;
 int max_prepared_xacts ;
 int mul_size (int ,int) ;

Size
ProcGlobalShmemSize(void)
{
 Size size = 0;


 size = add_size(size, sizeof(PROC_HDR));

 size = add_size(size, mul_size(MaxBackends, sizeof(PGPROC)));

 size = add_size(size, mul_size(NUM_AUXILIARY_PROCS, sizeof(PGPROC)));

 size = add_size(size, mul_size(max_prepared_xacts, sizeof(PGPROC)));

 size = add_size(size, sizeof(slock_t));

 size = add_size(size, mul_size(MaxBackends, sizeof(PGXACT)));
 size = add_size(size, mul_size(NUM_AUXILIARY_PROCS, sizeof(PGXACT)));
 size = add_size(size, mul_size(max_prepared_xacts, sizeof(PGXACT)));

 return size;
}
