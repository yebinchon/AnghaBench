
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 char* pq_getmsgstring (int ) ;

__attribute__((used)) static const char *
logicalrep_read_namespace(StringInfo in)
{
 const char *nspname = pq_getmsgstring(in);

 if (nspname[0] == '\0')
  nspname = "pg_catalog";

 return nspname;
}
