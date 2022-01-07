
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* pg_get_indexdef_worker (int ,int ,int *,int,int,int,int,int ,int) ;

char *
pg_get_indexdef_string(Oid indexrelid)
{
 return pg_get_indexdef_worker(indexrelid, 0, ((void*)0),
          0, 0,
          1, 1,
          0, 0);
}
