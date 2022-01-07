
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__* values; } ;
typedef TYPE_2__ oidvector ;
typedef int int32 ;
struct TYPE_17__ {int* values; } ;
typedef TYPE_3__ int2vector ;
typedef int int16 ;
struct TYPE_22__ {int amname; int amhandler; } ;
struct TYPE_21__ {scalar_t__ relam; scalar_t__ relkind; int relname; } ;
struct TYPE_15__ {scalar_t__* values; } ;
struct TYPE_20__ {scalar_t__ indrelid; scalar_t__ indexrelid; int indnatts; int indnkeyatts; TYPE_1__ indkey; scalar_t__ indisunique; } ;
struct TYPE_19__ {scalar_t__ amcanorder; } ;
struct TYPE_18__ {char* data; } ;
typedef TYPE_4__ StringInfoData ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int ListCell ;
typedef int List ;
typedef TYPE_5__ IndexAmRoutine ;
typedef int HeapTuple ;
typedef TYPE_6__* Form_pg_index ;
typedef TYPE_7__* Form_pg_class ;
typedef TYPE_8__* Form_pg_am ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 int AMOID ;
 int Anum_pg_index_indclass ;
 int Anum_pg_index_indcollation ;
 int Anum_pg_index_indexprs ;
 int Anum_pg_index_indoption ;
 int Anum_pg_index_indpred ;
 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_5__* GetIndexAmRoutine (int ) ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int INDOPTION_DESC ;
 int INDOPTION_NULLS_FIRST ;
 int * NIL ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PRETTYFLAG_SCHEMA ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 int appendStringInfo (TYPE_4__*,char*,char*,...) ;
 int appendStringInfoChar (TYPE_4__*,char) ;
 int appendStringInfoString (TYPE_4__*,char*) ;
 int * deparse_context_for (int ,scalar_t__) ;
 char* deparse_expression_pretty (int *,int *,int,int,int,int ) ;
 int elog (int ,char*,...) ;
 scalar_t__ exprCollation (int *) ;
 scalar_t__ exprType (int *) ;
 char* flatten_reloptions (scalar_t__) ;
 char* generate_collation_name (scalar_t__) ;
 char* generate_operator_name (scalar_t__ const,scalar_t__,scalar_t__) ;
 int generate_qualified_relation_name (scalar_t__) ;
 int generate_relation_name (scalar_t__,int *) ;
 char* get_attname (scalar_t__,scalar_t__,int) ;
 int get_atttypetypmodcoll (scalar_t__,scalar_t__,scalar_t__*,int *,scalar_t__*) ;
 int get_opclass_name (scalar_t__,scalar_t__,TYPE_4__*) ;
 scalar_t__ get_rel_tablespace (scalar_t__) ;
 int get_relation_name (scalar_t__) ;
 char* get_tablespace_name (scalar_t__) ;
 int heap_attisnull (int ,int ,int *) ;
 int initStringInfo (TYPE_4__*) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int *) ;
 int * lnext (int *,int *) ;
 scalar_t__ looks_like_function (int *) ;
 int pfree (char*) ;
 char* quote_identifier (char*) ;
 scalar_t__ stringToNode (char*) ;

__attribute__((used)) static char *
pg_get_indexdef_worker(Oid indexrelid, int colno,
        const Oid *excludeOps,
        bool attrsOnly, bool keysOnly,
        bool showTblSpc, bool inherits,
        int prettyFlags, bool missing_ok)
{

 bool isConstraint = (excludeOps != ((void*)0));
 HeapTuple ht_idx;
 HeapTuple ht_idxrel;
 HeapTuple ht_am;
 Form_pg_index idxrec;
 Form_pg_class idxrelrec;
 Form_pg_am amrec;
 IndexAmRoutine *amroutine;
 List *indexprs;
 ListCell *indexpr_item;
 List *context;
 Oid indrelid;
 int keyno;
 Datum indcollDatum;
 Datum indclassDatum;
 Datum indoptionDatum;
 bool isnull;
 oidvector *indcollation;
 oidvector *indclass;
 int2vector *indoption;
 StringInfoData buf;
 char *str;
 char *sep;




 ht_idx = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(indexrelid));
 if (!HeapTupleIsValid(ht_idx))
 {
  if (missing_ok)
   return ((void*)0);
  elog(ERROR, "cache lookup failed for index %u", indexrelid);
 }
 idxrec = (Form_pg_index) GETSTRUCT(ht_idx);

 indrelid = idxrec->indrelid;
 Assert(indexrelid == idxrec->indexrelid);


 indcollDatum = SysCacheGetAttr(INDEXRELID, ht_idx,
           Anum_pg_index_indcollation, &isnull);
 Assert(!isnull);
 indcollation = (oidvector *) DatumGetPointer(indcollDatum);

 indclassDatum = SysCacheGetAttr(INDEXRELID, ht_idx,
         Anum_pg_index_indclass, &isnull);
 Assert(!isnull);
 indclass = (oidvector *) DatumGetPointer(indclassDatum);

 indoptionDatum = SysCacheGetAttr(INDEXRELID, ht_idx,
          Anum_pg_index_indoption, &isnull);
 Assert(!isnull);
 indoption = (int2vector *) DatumGetPointer(indoptionDatum);




 ht_idxrel = SearchSysCache1(RELOID, ObjectIdGetDatum(indexrelid));
 if (!HeapTupleIsValid(ht_idxrel))
  elog(ERROR, "cache lookup failed for relation %u", indexrelid);
 idxrelrec = (Form_pg_class) GETSTRUCT(ht_idxrel);




 ht_am = SearchSysCache1(AMOID, ObjectIdGetDatum(idxrelrec->relam));
 if (!HeapTupleIsValid(ht_am))
  elog(ERROR, "cache lookup failed for access method %u",
    idxrelrec->relam);
 amrec = (Form_pg_am) GETSTRUCT(ht_am);


 amroutine = GetIndexAmRoutine(amrec->amhandler);






 if (!heap_attisnull(ht_idx, Anum_pg_index_indexprs, ((void*)0)))
 {
  Datum exprsDatum;
  bool isnull;
  char *exprsString;

  exprsDatum = SysCacheGetAttr(INDEXRELID, ht_idx,
          Anum_pg_index_indexprs, &isnull);
  Assert(!isnull);
  exprsString = TextDatumGetCString(exprsDatum);
  indexprs = (List *) stringToNode(exprsString);
  pfree(exprsString);
 }
 else
  indexprs = NIL;

 indexpr_item = list_head(indexprs);

 context = deparse_context_for(get_relation_name(indrelid), indrelid);





 initStringInfo(&buf);

 if (!attrsOnly)
 {
  if (!isConstraint)
   appendStringInfo(&buf, "CREATE %sINDEX %s ON %s%s USING %s (",
        idxrec->indisunique ? "UNIQUE " : "",
        quote_identifier(NameStr(idxrelrec->relname)),
        idxrelrec->relkind == RELKIND_PARTITIONED_INDEX
        && !inherits ? "ONLY " : "",
        (prettyFlags & PRETTYFLAG_SCHEMA) ?
        generate_relation_name(indrelid, NIL) :
        generate_qualified_relation_name(indrelid),
        quote_identifier(NameStr(amrec->amname)));
  else
   appendStringInfo(&buf, "EXCLUDE USING %s (",
        quote_identifier(NameStr(amrec->amname)));
 }




 sep = "";
 for (keyno = 0; keyno < idxrec->indnatts; keyno++)
 {
  AttrNumber attnum = idxrec->indkey.values[keyno];
  Oid keycoltype;
  Oid keycolcollation;




  if (keysOnly && keyno >= idxrec->indnkeyatts)
   break;


  if (!colno && keyno == idxrec->indnkeyatts)
  {
   appendStringInfoString(&buf, ") INCLUDE (");
   sep = "";
  }

  if (!colno)
   appendStringInfoString(&buf, sep);
  sep = ", ";

  if (attnum != 0)
  {

   char *attname;
   int32 keycoltypmod;

   attname = get_attname(indrelid, attnum, 0);
   if (!colno || colno == keyno + 1)
    appendStringInfoString(&buf, quote_identifier(attname));
   get_atttypetypmodcoll(indrelid, attnum,
          &keycoltype, &keycoltypmod,
          &keycolcollation);
  }
  else
  {

   Node *indexkey;

   if (indexpr_item == ((void*)0))
    elog(ERROR, "too few entries in indexprs list");
   indexkey = (Node *) lfirst(indexpr_item);
   indexpr_item = lnext(indexprs, indexpr_item);

   str = deparse_expression_pretty(indexkey, context, 0, 0,
           prettyFlags, 0);
   if (!colno || colno == keyno + 1)
   {

    if (looks_like_function(indexkey))
     appendStringInfoString(&buf, str);
    else
     appendStringInfo(&buf, "(%s)", str);
   }
   keycoltype = exprType(indexkey);
   keycolcollation = exprCollation(indexkey);
  }


  if (!attrsOnly && keyno < idxrec->indnkeyatts &&
   (!colno || colno == keyno + 1))
  {
   int16 opt = indoption->values[keyno];
   Oid indcoll = indcollation->values[keyno];


   if (OidIsValid(indcoll) && indcoll != keycolcollation)
    appendStringInfo(&buf, " COLLATE %s",
         generate_collation_name((indcoll)));


   get_opclass_name(indclass->values[keyno], keycoltype, &buf);


   if (amroutine->amcanorder)
   {

    if (opt & INDOPTION_DESC)
    {
     appendStringInfoString(&buf, " DESC");

     if (!(opt & INDOPTION_NULLS_FIRST))
      appendStringInfoString(&buf, " NULLS LAST");
    }
    else
    {
     if (opt & INDOPTION_NULLS_FIRST)
      appendStringInfoString(&buf, " NULLS FIRST");
    }
   }


   if (excludeOps != ((void*)0))
    appendStringInfo(&buf, " WITH %s",
         generate_operator_name(excludeOps[keyno],
              keycoltype,
              keycoltype));
  }
 }

 if (!attrsOnly)
 {
  appendStringInfoChar(&buf, ')');




  str = flatten_reloptions(indexrelid);
  if (str)
  {
   appendStringInfo(&buf, " WITH (%s)", str);
   pfree(str);
  }




  if (showTblSpc)
  {
   Oid tblspc;

   tblspc = get_rel_tablespace(indexrelid);
   if (OidIsValid(tblspc))
   {
    if (isConstraint)
     appendStringInfoString(&buf, " USING INDEX");
    appendStringInfo(&buf, " TABLESPACE %s",
         quote_identifier(get_tablespace_name(tblspc)));
   }
  }




  if (!heap_attisnull(ht_idx, Anum_pg_index_indpred, ((void*)0)))
  {
   Node *node;
   Datum predDatum;
   bool isnull;
   char *predString;


   predDatum = SysCacheGetAttr(INDEXRELID, ht_idx,
          Anum_pg_index_indpred, &isnull);
   Assert(!isnull);
   predString = TextDatumGetCString(predDatum);
   node = (Node *) stringToNode(predString);
   pfree(predString);


   str = deparse_expression_pretty(node, context, 0, 0,
           prettyFlags, 0);
   if (isConstraint)
    appendStringInfo(&buf, " WHERE (%s)", str);
   else
    appendStringInfo(&buf, " WHERE %s", str);
  }
 }


 ReleaseSysCache(ht_idx);
 ReleaseSysCache(ht_idxrel);
 ReleaseSysCache(ht_am);

 return buf.data;
}
