
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef scalar_t__ Size ;


 int DatumGetUInt32 (int ) ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;
 int hash_any (unsigned char const*,int) ;
 scalar_t__ strlen (char const*) ;

uint32
string_hash(const void *key, Size keysize)
{





 Size s_len = strlen((const char *) key);

 s_len = Min(s_len, keysize - 1);
 return DatumGetUInt32(hash_any((const unsigned char *) key,
           (int) s_len));
}
