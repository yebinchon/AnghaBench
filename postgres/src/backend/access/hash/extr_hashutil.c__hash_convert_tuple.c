
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Relation ;
typedef int Datum ;


 int UInt32GetDatum (int ) ;
 int _hash_datum2hashkey (int ,int ) ;

bool
_hash_convert_tuple(Relation index,
     Datum *user_values, bool *user_isnull,
     Datum *index_values, bool *index_isnull)
{
 uint32 hashkey;





 if (user_isnull[0])
  return 0;

 hashkey = _hash_datum2hashkey(index, user_values[0]);
 index_values[0] = UInt32GetDatum(hashkey);
 index_isnull[0] = 0;
 return 1;
}
