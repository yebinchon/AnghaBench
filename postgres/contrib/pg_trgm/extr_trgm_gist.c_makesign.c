
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trgm ;
typedef scalar_t__ int32 ;
typedef int TRGM ;
typedef scalar_t__ BITVECP ;
typedef int BITVEC ;


 scalar_t__ ARRNELEM (int *) ;
 int CPTRGM (char*,int *) ;
 int * GETARR (int *) ;
 int HASH (scalar_t__,scalar_t__) ;
 int MemSet (void*,int ,int) ;
 int SETBIT (scalar_t__,int ) ;
 int SIGLENBIT ;

__attribute__((used)) static void
makesign(BITVECP sign, TRGM *a)
{
 int32 k,
    len = ARRNELEM(a);
 trgm *ptr = GETARR(a);
 int32 tmp = 0;

 MemSet((void *) sign, 0, sizeof(BITVEC));
 SETBIT(sign, SIGLENBIT);
 for (k = 0; k < len; k++)
 {
  CPTRGM(((char *) &tmp), ptr + k);
  HASH(sign, tmp);
 }
}
