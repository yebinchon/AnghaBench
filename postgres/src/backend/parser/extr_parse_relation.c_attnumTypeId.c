
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int natts; } ;
struct TYPE_9__ {int atttypid; } ;
struct TYPE_8__ {int atttypid; } ;
struct TYPE_7__ {TYPE_5__* rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef TYPE_2__ FormData_pg_attribute ;


 int ERROR ;
 TYPE_2__* SystemAttributeDefinition (int) ;
 TYPE_4__* TupleDescAttr (TYPE_5__*,int) ;
 int elog (int ,char*,int) ;

Oid
attnumTypeId(Relation rd, int attid)
{
 if (attid <= 0)
 {
  const FormData_pg_attribute *sysatt;

  sysatt = SystemAttributeDefinition(attid);
  return sysatt->atttypid;
 }
 if (attid > rd->rd_att->natts)
  elog(ERROR, "invalid attribute number %d", attid);
 return TupleDescAttr(rd->rd_att, attid - 1)->atttypid;
}
