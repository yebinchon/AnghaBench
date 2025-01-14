
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_10__ {int relpages; int reltuples; int relispartition; void* reloftype; void* reltype; void* relowner; void* relminmxid; void* relfrozenxid; int relallvisible; } ;
struct TYPE_9__ {TYPE_1__* rd_att; TYPE_3__* rd_rel; } ;
struct TYPE_8__ {void* tdtypeid; } ;
typedef TYPE_2__* Relation ;
typedef void* Oid ;
typedef TYPE_3__* Form_pg_class ;
typedef int Datum ;


 int InsertPgClassTuple (TYPE_2__*,TYPE_2__*,void*,int ,int ) ;






__attribute__((used)) static void
AddNewRelationTuple(Relation pg_class_desc,
     Relation new_rel_desc,
     Oid new_rel_oid,
     Oid new_type_oid,
     Oid reloftype,
     Oid relowner,
     char relkind,
     TransactionId relfrozenxid,
     TransactionId relminmxid,
     Datum relacl,
     Datum reloptions)
{
 Form_pg_class new_rel_reltup;





 new_rel_reltup = new_rel_desc->rd_rel;

 switch (relkind)
 {
  case 130:
  case 131:
  case 132:
  case 128:

   new_rel_reltup->relpages = 0;
   new_rel_reltup->reltuples = 0;
   new_rel_reltup->relallvisible = 0;
   break;
  case 129:

   new_rel_reltup->relpages = 1;
   new_rel_reltup->reltuples = 1;
   new_rel_reltup->relallvisible = 0;
   break;
  default:

   new_rel_reltup->relpages = 0;
   new_rel_reltup->reltuples = 0;
   new_rel_reltup->relallvisible = 0;
   break;
 }

 new_rel_reltup->relfrozenxid = relfrozenxid;
 new_rel_reltup->relminmxid = relminmxid;
 new_rel_reltup->relowner = relowner;
 new_rel_reltup->reltype = new_type_oid;
 new_rel_reltup->reloftype = reloftype;


 new_rel_reltup->relispartition = 0;

 new_rel_desc->rd_att->tdtypeid = new_type_oid;


 InsertPgClassTuple(pg_class_desc, new_rel_desc, new_rel_oid,
        relacl, reloptions);
}
