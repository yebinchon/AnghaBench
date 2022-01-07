
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int BufferLookupEnt ;


 int hash_estimate_size (int,int) ;

Size
BufTableShmemSize(int size)
{
 return hash_estimate_size(size, sizeof(BufferLookupEnt));
}
