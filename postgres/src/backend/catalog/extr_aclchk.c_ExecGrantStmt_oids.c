
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int objtype; } ;
typedef TYPE_1__ InternalGrant ;


 int ERROR ;
 int EventTriggerCollectGrant (TYPE_1__*) ;
 scalar_t__ EventTriggerSupportsObjectType (int) ;
 int ExecGrant_Database (TYPE_1__*) ;
 int ExecGrant_Fdw (TYPE_1__*) ;
 int ExecGrant_ForeignServer (TYPE_1__*) ;
 int ExecGrant_Function (TYPE_1__*) ;
 int ExecGrant_Language (TYPE_1__*) ;
 int ExecGrant_Largeobject (TYPE_1__*) ;
 int ExecGrant_Namespace (TYPE_1__*) ;
 int ExecGrant_Relation (TYPE_1__*) ;
 int ExecGrant_Tablespace (TYPE_1__*) ;
 int ExecGrant_Type (TYPE_1__*) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
ExecGrantStmt_oids(InternalGrant *istmt)
{
 switch (istmt->objtype)
 {
  case 130:
  case 131:
   ExecGrant_Relation(istmt);
   break;
  case 141:
   ExecGrant_Database(istmt);
   break;
  case 140:
  case 128:
   ExecGrant_Type(istmt);
   break;
  case 139:
   ExecGrant_Fdw(istmt);
   break;
  case 138:
   ExecGrant_ForeignServer(istmt);
   break;
  case 137:
  case 134:
  case 133:
   ExecGrant_Function(istmt);
   break;
  case 136:
   ExecGrant_Language(istmt);
   break;
  case 135:
   ExecGrant_Largeobject(istmt);
   break;
  case 132:
   ExecGrant_Namespace(istmt);
   break;
  case 129:
   ExecGrant_Tablespace(istmt);
   break;
  default:
   elog(ERROR, "unrecognized GrantStmt.objtype: %d",
     (int) istmt->objtype);
 }







 if (EventTriggerSupportsObjectType(istmt->objtype))
  EventTriggerCollectGrant(istmt);
}
