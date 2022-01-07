
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MemoryContextStrdup (int ,char*) ;
 int TopMemoryContext ;
 int pfree (char*) ;
 char* pg_any_to_server (char const*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
cache_single_string(char **dst, const char *src, int encoding)
{
 char *ptr;
 char *olddst;


 ptr = pg_any_to_server(src, strlen(src), encoding);


 olddst = *dst;
 *dst = MemoryContextStrdup(TopMemoryContext, ptr);
 if (olddst)
  pfree(olddst);


 if (ptr != src)
  pfree(ptr);
}
