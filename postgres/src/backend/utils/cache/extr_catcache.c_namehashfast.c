
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 int * DatumGetName (int ) ;
 char* NameStr (int ) ;
 int hash_any (unsigned char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static uint32
namehashfast(Datum datum)
{
 char *key = NameStr(*DatumGetName(datum));

 return hash_any((unsigned char *) key, strlen(key));
}
