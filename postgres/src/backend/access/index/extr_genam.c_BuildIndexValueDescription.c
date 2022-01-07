
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* values; } ;
struct TYPE_15__ {scalar_t__ indrelid; scalar_t__ indexrelid; TYPE_1__ indkey; } ;
struct TYPE_14__ {int * rd_opcintype; TYPE_4__* rd_index; } ;
struct TYPE_13__ {char* data; } ;
typedef TYPE_2__ StringInfoData ;
typedef TYPE_3__* Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_4__* Form_pg_index ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_SELECT ;
 int Assert (int) ;
 int GetUserId () ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_3__*) ;
 scalar_t__ InvalidAttrNumber ;
 int InvalidOid ;
 char* OidOutputFunctionCall (scalar_t__,int ) ;
 scalar_t__ RLS_ENABLED ;
 scalar_t__ RelationGetRelid (TYPE_3__*) ;
 int appendStringInfo (TYPE_2__*,char*,int ) ;
 int appendStringInfoChar (TYPE_2__*,char) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 scalar_t__ check_enable_rls (scalar_t__,int ,int) ;
 int getTypeOutputInfo (int ,scalar_t__*,int*) ;
 int initStringInfo (TYPE_2__*) ;
 scalar_t__ pg_attribute_aclcheck (scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ pg_class_aclcheck (scalar_t__,int ,int ) ;
 int pg_get_indexdef_columns (scalar_t__,int) ;

char *
BuildIndexValueDescription(Relation indexRelation,
         Datum *values, bool *isnull)
{
 StringInfoData buf;
 Form_pg_index idxrec;
 int indnkeyatts;
 int i;
 int keyno;
 Oid indexrelid = RelationGetRelid(indexRelation);
 Oid indrelid;
 AclResult aclresult;

 indnkeyatts = IndexRelationGetNumberOfKeyAttributes(indexRelation);
 idxrec = indexRelation->rd_index;
 indrelid = idxrec->indrelid;
 Assert(indexrelid == idxrec->indexrelid);


 if (check_enable_rls(indrelid, InvalidOid, 1) == RLS_ENABLED)
  return ((void*)0);


 aclresult = pg_class_aclcheck(indrelid, GetUserId(), ACL_SELECT);
 if (aclresult != ACLCHECK_OK)
 {




  for (keyno = 0; keyno < indnkeyatts; keyno++)
  {
   AttrNumber attnum = idxrec->indkey.values[keyno];







   if (attnum == InvalidAttrNumber ||
    pg_attribute_aclcheck(indrelid, attnum, GetUserId(),
           ACL_SELECT) != ACLCHECK_OK)
   {

    return ((void*)0);
   }
  }
 }

 initStringInfo(&buf);
 appendStringInfo(&buf, "(%s)=(",
      pg_get_indexdef_columns(indexrelid, 1));

 for (i = 0; i < indnkeyatts; i++)
 {
  char *val;

  if (isnull[i])
   val = "null";
  else
  {
   Oid foutoid;
   bool typisvarlena;
   getTypeOutputInfo(indexRelation->rd_opcintype[i],
         &foutoid, &typisvarlena);
   val = OidOutputFunctionCall(foutoid, values[i]);
  }

  if (i > 0)
   appendStringInfoString(&buf, ", ");
  appendStringInfoString(&buf, val);
 }

 appendStringInfoChar(&buf, ')');

 return buf.data;
}
