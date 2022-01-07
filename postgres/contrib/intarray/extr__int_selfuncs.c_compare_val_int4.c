
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Datum ;


 int DatumGetInt32 (int const) ;

__attribute__((used)) static int
compare_val_int4(const void *a, const void *b)
{
 int32 key = *(int32 *) a;
 const Datum *t = (const Datum *) b;

 return key - DatumGetInt32(*t);
}
