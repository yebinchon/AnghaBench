
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int int64 ;


 int MAX_HASH_FUNCS ;
 int Max (int,int ) ;
 int Min (int,int ) ;
 int log (double) ;
 int rint (int) ;

__attribute__((used)) static int
optimal_k(uint64 bitset_bits, int64 total_elems)
{
 int k = rint(log(2.0) * bitset_bits / total_elems);

 return Max(1, Min(k, MAX_HASH_FUNCS));
}
