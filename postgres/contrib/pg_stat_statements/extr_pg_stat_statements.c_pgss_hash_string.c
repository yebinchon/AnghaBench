
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int DatumGetUInt64 (int ) ;
 int hash_any_extended (unsigned char const*,int,int ) ;

__attribute__((used)) static uint64
pgss_hash_string(const char *str, int len)
{
 return DatumGetUInt64(hash_any_extended((const unsigned char *) str,
           len, 0));
}
