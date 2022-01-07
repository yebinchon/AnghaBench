
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int * tts_values; scalar_t__* tts_isnull; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_17__ {int atttypid; int attname; scalar_t__ attnum; scalar_t__ attisdropped; } ;
struct TYPE_16__ {char* data; int len; } ;
struct TYPE_15__ {int natts; } ;
typedef TYPE_3__ StringInfoData ;
typedef int Oid ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Bitmapset ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_SELECT ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 int GetUserId () ;
 int InvalidOid ;
 char* NameStr (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 scalar_t__ RLS_ENABLED ;
 TYPE_4__* TupleDescAttr (TYPE_2__*,int) ;
 int appendBinaryStringInfo (TYPE_3__*,char*,int) ;
 int appendStringInfoChar (TYPE_3__*,char) ;
 int appendStringInfoString (TYPE_3__*,char*) ;
 scalar_t__ bms_is_member (scalar_t__,int *) ;
 scalar_t__ check_enable_rls (int ,int ,int) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int initStringInfo (TYPE_3__*) ;
 scalar_t__ pg_attribute_aclcheck (int ,scalar_t__,int ,int ) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;
 int pg_mbcliplen (char*,int,int) ;
 int slot_getallattrs (TYPE_1__*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
ExecBuildSlotValueDescription(Oid reloid,
         TupleTableSlot *slot,
         TupleDesc tupdesc,
         Bitmapset *modifiedCols,
         int maxfieldlen)
{
 StringInfoData buf;
 StringInfoData collist;
 bool write_comma = 0;
 bool write_comma_collist = 0;
 int i;
 AclResult aclresult;
 bool table_perm = 0;
 bool any_perm = 0;






 if (check_enable_rls(reloid, InvalidOid, 1) == RLS_ENABLED)
  return ((void*)0);

 initStringInfo(&buf);

 appendStringInfoChar(&buf, '(');
 aclresult = pg_class_aclcheck(reloid, GetUserId(), ACL_SELECT);
 if (aclresult != ACLCHECK_OK)
 {

  initStringInfo(&collist);
  appendStringInfoChar(&collist, '(');
 }
 else
  table_perm = any_perm = 1;


 slot_getallattrs(slot);

 for (i = 0; i < tupdesc->natts; i++)
 {
  bool column_perm = 0;
  char *val;
  int vallen;
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);


  if (att->attisdropped)
   continue;

  if (!table_perm)
  {






   aclresult = pg_attribute_aclcheck(reloid, att->attnum,
             GetUserId(), ACL_SELECT);
   if (bms_is_member(att->attnum - FirstLowInvalidHeapAttributeNumber,
         modifiedCols) || aclresult == ACLCHECK_OK)
   {
    column_perm = any_perm = 1;

    if (write_comma_collist)
     appendStringInfoString(&collist, ", ");
    else
     write_comma_collist = 1;

    appendStringInfoString(&collist, NameStr(att->attname));
   }
  }

  if (table_perm || column_perm)
  {
   if (slot->tts_isnull[i])
    val = "null";
   else
   {
    Oid foutoid;
    bool typisvarlena;

    getTypeOutputInfo(att->atttypid,
          &foutoid, &typisvarlena);
    val = OidOutputFunctionCall(foutoid, slot->tts_values[i]);
   }

   if (write_comma)
    appendStringInfoString(&buf, ", ");
   else
    write_comma = 1;


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
 }


 if (!any_perm)
  return ((void*)0);

 appendStringInfoChar(&buf, ')');

 if (!table_perm)
 {
  appendStringInfoString(&collist, ") = ");
  appendBinaryStringInfo(&collist, buf.data, buf.len);

  return collist.data;
 }

 return buf.data;
}
