
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;
typedef int Oid ;


 int NoLock ;
 int get_rel_data_width (int ,int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

int32
get_relation_data_width(Oid relid, int32 *attr_widths)
{
 int32 result;
 Relation relation;


 relation = table_open(relid, NoLock);

 result = get_rel_data_width(relation, attr_widths);

 table_close(relation, NoLock);

 return result;
}
