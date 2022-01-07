
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

Size
add_size(Size s1, Size s2)
{
 Size result;

 result = s1 + s2;

 if (result < s1 || result < s2)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("requested shared memory size overflows size_t")));
 return result;
}
