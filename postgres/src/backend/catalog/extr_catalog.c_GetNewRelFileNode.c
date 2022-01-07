
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ spcNode; void* relNode; void* dbNode; } ;
struct TYPE_5__ {TYPE_1__ node; int backend; } ;
typedef scalar_t__ Relation ;
typedef TYPE_2__ RelFileNodeBackend ;
typedef void* Oid ;
typedef int BackendId ;


 int Anum_pg_class_oid ;
 int Assert (int) ;
 int BackendIdForTempRelations () ;
 int CHECK_FOR_INTERRUPTS () ;
 int ClassOidIndexId ;
 int ERROR ;
 int F_OK ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 void* GetNewObjectId () ;
 void* GetNewOidWithIndex (scalar_t__,int ,int ) ;
 int InvalidBackendId ;
 void* InvalidOid ;
 int IsBinaryUpgrade ;
 int MAIN_FORKNUM ;
 void* MyDatabaseId ;
 void* MyDatabaseTableSpace ;



 scalar_t__ access (char*,int ) ;
 int elog (int ,char*,char) ;
 int pfree (char*) ;
 char* relpath (TYPE_2__,int ) ;

Oid
GetNewRelFileNode(Oid reltablespace, Relation pg_class, char relpersistence)
{
 RelFileNodeBackend rnode;
 char *rpath;
 bool collides;
 BackendId backend;






 Assert(!IsBinaryUpgrade);

 switch (relpersistence)
 {
  case 129:
   backend = BackendIdForTempRelations();
   break;
  case 128:
  case 130:
   backend = InvalidBackendId;
   break;
  default:
   elog(ERROR, "invalid relpersistence: %c", relpersistence);
   return InvalidOid;
 }


 rnode.node.spcNode = reltablespace ? reltablespace : MyDatabaseTableSpace;
 rnode.node.dbNode = (rnode.node.spcNode == GLOBALTABLESPACE_OID) ? InvalidOid : MyDatabaseId;






 rnode.backend = backend;

 do
 {
  CHECK_FOR_INTERRUPTS();


  if (pg_class)
   rnode.node.relNode = GetNewOidWithIndex(pg_class, ClassOidIndexId,
             Anum_pg_class_oid);
  else
   rnode.node.relNode = GetNewObjectId();


  rpath = relpath(rnode, MAIN_FORKNUM);

  if (access(rpath, F_OK) == 0)
  {

   collides = 1;
  }
  else
  {







   collides = 0;
  }

  pfree(rpath);
 } while (collides);

 return rnode.node.relNode;
}
