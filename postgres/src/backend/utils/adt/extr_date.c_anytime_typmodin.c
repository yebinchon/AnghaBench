
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ArrayType ;


 int * ArrayGetIntegerTypmods (int *,int*) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int anytime_typmod_check (int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static int32
anytime_typmodin(bool istz, ArrayType *ta)
{
 int32 *tl;
 int n;

 tl = ArrayGetIntegerTypmods(ta, &n);





 if (n != 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid type modifier")));

 return anytime_typmod_check(istz, tl[0]);
}
