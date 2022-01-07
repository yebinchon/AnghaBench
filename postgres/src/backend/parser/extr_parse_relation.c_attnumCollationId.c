
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int natts; } ;
struct TYPE_6__ {int attcollation; } ;
struct TYPE_5__ {TYPE_4__* rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;


 int ERROR ;
 int InvalidOid ;
 TYPE_3__* TupleDescAttr (TYPE_4__*,int) ;
 int elog (int ,char*,int) ;

Oid
attnumCollationId(Relation rd, int attid)
{
 if (attid <= 0)
 {

  return InvalidOid;
 }
 if (attid > rd->rd_att->natts)
  elog(ERROR, "invalid attribute number %d", attid);
 return TupleDescAttr(rd->rd_att, attid - 1)->attcollation;
}
