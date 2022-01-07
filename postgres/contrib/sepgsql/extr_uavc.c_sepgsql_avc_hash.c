
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;


 int hash_any (unsigned char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static uint32
sepgsql_avc_hash(const char *scontext, const char *tcontext, uint16 tclass)
{
 return hash_any((const unsigned char *) scontext, strlen(scontext))
  ^ hash_any((const unsigned char *) tcontext, strlen(tcontext))
  ^ tclass;
}
