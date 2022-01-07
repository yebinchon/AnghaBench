
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trgm ;
typedef scalar_t__ int32 ;
typedef int TRGM ;
typedef int BITVECP ;


 scalar_t__ ARRNELEM (int *) ;
 int CPTRGM (char*,int *) ;
 int * GETARR (int *) ;
 scalar_t__ GETBIT (int ,int ) ;
 int HASHVAL (scalar_t__) ;

__attribute__((used)) static int32
cnt_sml_sign_common(TRGM *qtrg, BITVECP sign)
{
 int32 count = 0;
 int32 k,
    len = ARRNELEM(qtrg);
 trgm *ptr = GETARR(qtrg);
 int32 tmp = 0;

 for (k = 0; k < len; k++)
 {
  CPTRGM(((char *) &tmp), ptr + k);
  count += GETBIT(sign, HASHVAL(tmp));
 }

 return count;
}
