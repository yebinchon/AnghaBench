
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int PROCLOCK ;
typedef int LOCK ;


 long NLOCKENTS () ;
 int add_size (int,int) ;
 int hash_estimate_size (long,int) ;

Size
LockShmemSize(void)
{
 Size size = 0;
 long max_table_size;


 max_table_size = NLOCKENTS();
 size = add_size(size, hash_estimate_size(max_table_size, sizeof(LOCK)));


 max_table_size *= 2;
 size = add_size(size, hash_estimate_size(max_table_size, sizeof(PROCLOCK)));




 size = add_size(size, size / 10);

 return size;
}
