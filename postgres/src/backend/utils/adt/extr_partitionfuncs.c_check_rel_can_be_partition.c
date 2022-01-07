
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ObjectIdGetDatum (int ) ;
 char RELKIND_PARTITIONED_INDEX ;
 char RELKIND_PARTITIONED_TABLE ;
 int RELOID ;
 int SearchSysCacheExists1 (int ,int ) ;
 int get_rel_relispartition (int ) ;
 char get_rel_relkind (int ) ;

__attribute__((used)) static bool
check_rel_can_be_partition(Oid relid)
{
 char relkind;
 bool relispartition;


 if (!SearchSysCacheExists1(RELOID, ObjectIdGetDatum(relid)))
  return 0;

 relkind = get_rel_relkind(relid);
 relispartition = get_rel_relispartition(relid);


 if (!relispartition &&
  relkind != RELKIND_PARTITIONED_TABLE &&
  relkind != RELKIND_PARTITIONED_INDEX)
  return 0;

 return 1;
}
