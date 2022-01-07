
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_COLLATION_OID ;
 int pfree (char*) ;
 char* str_tolower (char const*,size_t,int ) ;
 int strncmp (char*,char*,size_t) ;

int
ltree_strncasecmp(const char *a, const char *b, size_t s)
{
 char *al = str_tolower(a, s, DEFAULT_COLLATION_OID);
 char *bl = str_tolower(b, s, DEFAULT_COLLATION_OID);
 int res;

 res = strncmp(al, bl, s);

 pfree(al);
 pfree(bl);

 return res;
}
