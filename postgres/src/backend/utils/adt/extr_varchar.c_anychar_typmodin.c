
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ArrayType ;


 int* ArrayGetIntegerTypmods (int *,int*) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int MaxAttrSize ;
 int VARHDRSZ ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;

__attribute__((used)) static int32
anychar_typmodin(ArrayType *ta, const char *typename)
{
 int32 typmod;
 int32 *tl;
 int n;

 tl = ArrayGetIntegerTypmods(ta, &n);





 if (n != 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid type modifier")));

 if (*tl < 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("length for type %s must be at least 1", typename)));
 if (*tl > MaxAttrSize)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("length for type %s cannot exceed %d",
      typename, MaxAttrSize)));






 typmod = VARHDRSZ + *tl;

 return typmod;
}
