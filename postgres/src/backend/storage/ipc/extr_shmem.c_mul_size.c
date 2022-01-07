
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

Size
mul_size(Size s1, Size s2)
{
 Size result;

 if (s1 == 0 || s2 == 0)
  return 0;
 result = s1 * s2;

 if (result / s2 != s1)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("requested shared memory size overflows size_t")));
 return result;
}
