
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int PRETTYFLAG_INDENT ;
 int PRETTYFLAG_PAREN ;
 int PRETTYFLAG_SCHEMA ;
 char* pg_get_indexdef_worker (int ,int ,int *,int,int,int,int,int,int) ;

char *
pg_get_indexdef_columns(Oid indexrelid, bool pretty)
{
 int prettyFlags;

 prettyFlags = pretty ? (PRETTYFLAG_PAREN | PRETTYFLAG_INDENT | PRETTYFLAG_SCHEMA) : PRETTYFLAG_INDENT;

 return pg_get_indexdef_worker(indexrelid, 0, ((void*)0),
          1, 1,
          0, 0,
          prettyFlags, 0);
}
