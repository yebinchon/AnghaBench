
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Relation ;
typedef int PartitionKey ;
typedef int Oid ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_SELECT ;
 int GetUserId () ;
 scalar_t__ InvalidAttrNumber ;
 int InvalidOid ;
 char* OidOutputFunctionCall (int ,int ) ;
 scalar_t__ RLS_ENABLED ;
 int RelationGetPartitionKey (int ) ;
 int RelationGetRelid (int ) ;
 int appendBinaryStringInfo (TYPE_1__*,char*,int) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 scalar_t__ check_enable_rls (int ,int ,int) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 scalar_t__ get_partition_col_attnum (int ,int) ;
 int get_partition_col_typid (int ,int) ;
 int get_partition_natts (int ) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ pg_attribute_aclcheck (int ,scalar_t__,int ,int ) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;
 int pg_get_partkeydef_columns (int ,int) ;
 int pg_mbcliplen (char*,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
ExecBuildSlotPartitionKeyDescription(Relation rel,
          Datum *values,
          bool *isnull,
          int maxfieldlen)
{
 StringInfoData buf;
 PartitionKey key = RelationGetPartitionKey(rel);
 int partnatts = get_partition_natts(key);
 int i;
 Oid relid = RelationGetRelid(rel);
 AclResult aclresult;

 if (check_enable_rls(relid, InvalidOid, 1) == RLS_ENABLED)
  return ((void*)0);


 aclresult = pg_class_aclcheck(relid, GetUserId(), ACL_SELECT);
 if (aclresult != ACLCHECK_OK)
 {




  for (i = 0; i < partnatts; i++)
  {
   AttrNumber attnum = get_partition_col_attnum(key, i);






   if (attnum == InvalidAttrNumber ||
    pg_attribute_aclcheck(relid, attnum, GetUserId(),
           ACL_SELECT) != ACLCHECK_OK)
    return ((void*)0);
  }
 }

 initStringInfo(&buf);
 appendStringInfo(&buf, "(%s) = (",
      pg_get_partkeydef_columns(relid, 1));

 for (i = 0; i < partnatts; i++)
 {
  char *val;
  int vallen;

  if (isnull[i])
   val = "null";
  else
  {
   Oid foutoid;
   bool typisvarlena;

   getTypeOutputInfo(get_partition_col_typid(key, i),
         &foutoid, &typisvarlena);
   val = OidOutputFunctionCall(foutoid, values[i]);
  }

  if (i > 0)
   appendStringInfoString(&buf, ", ");


  vallen = strlen(val);
  if (vallen <= maxfieldlen)
   appendBinaryStringInfo(&buf, val, vallen);
  else
  {
   vallen = pg_mbcliplen(val, vallen, maxfieldlen);
   appendBinaryStringInfo(&buf, val, vallen);
   appendStringInfoString(&buf, "...");
  }
 }

 appendStringInfoChar(&buf, ')');

 return buf.data;
}
