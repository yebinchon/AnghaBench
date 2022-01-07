
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef int ArrayType ;


 size_t ARRNELEMS (int *) ;
 size_t* ARRPTR (int *) ;
 int CHECKARRVALID (int *) ;

int32
intarray_match_first(ArrayType *a, int32 elem)
{
 int32 *aa,
    c,
    i;

 CHECKARRVALID(a);
 c = ARRNELEMS(a);
 aa = ARRPTR(a);
 for (i = 0; i < c; i++)
  if (aa[i] == elem)
   return (i + 1);
 return 0;
}
