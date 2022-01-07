
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;
 int elog (int ,char*,int ) ;
 char* get_rel_name (int ) ;

__attribute__((used)) static char *
get_relation_name(Oid relid)
{
 char *relname = get_rel_name(relid);

 if (!relname)
  elog(ERROR, "cache lookup failed for relation %u", relid);
 return relname;
}
