
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef int SignTSVector ;
typedef scalar_t__ BITVECP ;
typedef int BITVEC ;


 size_t ARRNELEM (int *) ;
 size_t* GETARR (int *) ;
 int HASH (scalar_t__,size_t) ;
 int MemSet (void*,int ,int) ;

__attribute__((used)) static void
makesign(BITVECP sign, SignTSVector *a)
{
 int32 k,
    len = ARRNELEM(a);
 int32 *ptr = GETARR(a);

 MemSet((void *) sign, 0, sizeof(BITVEC));
 for (k = 0; k < len; k++)
  HASH(sign, ptr[k]);
}
