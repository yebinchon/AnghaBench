
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int Oid ;



 scalar_t__ BITS_PER_BYTE ;

 int GetDatabaseEncoding () ;



 scalar_t__ VARHDRSZ ;
 scalar_t__ numeric_maximum_size (scalar_t__) ;
 scalar_t__ pg_encoding_max_length (int ) ;

int32
type_maximum_size(Oid type_oid, int32 typemod)
{
 if (typemod < 0)
  return -1;

 switch (type_oid)
 {
  case 131:
  case 128:



   return (typemod - VARHDRSZ) *
    pg_encoding_max_length(GetDatabaseEncoding())
    + VARHDRSZ;

  case 130:
   return numeric_maximum_size(typemod);

  case 129:
  case 132:

   return (typemod + (BITS_PER_BYTE - 1)) / BITS_PER_BYTE
    + 2 * sizeof(int32);
 }


 return -1;
}
