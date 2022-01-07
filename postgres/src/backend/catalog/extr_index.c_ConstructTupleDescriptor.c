
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_18__ {int relnatts; } ;
struct TYPE_17__ {int atttypid; int atttypmod; int attalign; int attstorage; int attbyval; int attndims; int attlen; int attname; } ;
struct TYPE_16__ {int attnum; int attstattarget; int attcacheoff; int attislocal; int attcollation; int atttypid; int atttypmod; int attrelid; int attstorage; int attalign; int attbyval; int attlen; int attname; int attndims; } ;
struct TYPE_15__ {int opckeytype; scalar_t__ opcintype; } ;
struct TYPE_14__ {int typstorage; int typalign; int typbyval; int typlen; } ;
struct TYPE_13__ {int amkeytype; } ;
struct TYPE_12__ {int ii_NumIndexAttrs; int ii_NumIndexKeyAttrs; int* ii_IndexAttrNumbers; int * ii_Expressions; } ;
typedef int Relation ;
typedef int Oid ;
typedef int Node ;
typedef int ListCell ;
typedef int List ;
typedef TYPE_1__ IndexInfo ;
typedef TYPE_2__ IndexAmRoutine ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_type ;
typedef TYPE_4__* Form_pg_opclass ;
typedef TYPE_5__* Form_pg_attribute ;
typedef TYPE_6__ FormData_pg_attribute ;
typedef int AttrNumber ;


 scalar_t__ ANYARRAYOID ;
 int ANYELEMENTOID ;
 int ATTRIBUTE_FIXED_PART_SIZE ;
 int Assert (int) ;
 int AttrNumberGetAttrOffset (int) ;
 int CLAOID ;
 int CheckAttributeType (int ,int,int,int ,int ) ;
 int CreateTemplateTupleDesc (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_2__* GetIndexAmRoutineByAmId (int,int) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int MemSet (TYPE_5__*,int ,int ) ;
 int NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int) ;
 scalar_t__ OidIsValid (int) ;
 int RelationGetDescr (int ) ;
 TYPE_8__* RelationGetForm (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 void* TupleDescAttr (int ,int) ;
 int elog (int ,char*,...) ;
 int exprType (int *) ;
 int exprTypmod (int *) ;
 int get_base_element_type (int) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int *) ;
 int * lnext (int *,int *) ;
 int namecpy (int *,int *) ;
 int namestrcpy (int *,char const*) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static TupleDesc
ConstructTupleDescriptor(Relation heapRelation,
       IndexInfo *indexInfo,
       List *indexColNames,
       Oid accessMethodObjectId,
       Oid *collationObjectId,
       Oid *classObjectId)
{
 int numatts = indexInfo->ii_NumIndexAttrs;
 int numkeyatts = indexInfo->ii_NumIndexKeyAttrs;
 ListCell *colnames_item = list_head(indexColNames);
 ListCell *indexpr_item = list_head(indexInfo->ii_Expressions);
 IndexAmRoutine *amroutine;
 TupleDesc heapTupDesc;
 TupleDesc indexTupDesc;
 int natts;
 int i;


 amroutine = GetIndexAmRoutineByAmId(accessMethodObjectId, 0);


 heapTupDesc = RelationGetDescr(heapRelation);
 natts = RelationGetForm(heapRelation)->relnatts;




 indexTupDesc = CreateTemplateTupleDesc(numatts);




 for (i = 0; i < numatts; i++)
 {
  AttrNumber atnum = indexInfo->ii_IndexAttrNumbers[i];
  Form_pg_attribute to = TupleDescAttr(indexTupDesc, i);
  HeapTuple tuple;
  Form_pg_type typeTup;
  Form_pg_opclass opclassTup;
  Oid keyType;

  MemSet(to, 0, ATTRIBUTE_FIXED_PART_SIZE);
  to->attnum = i + 1;
  to->attstattarget = -1;
  to->attcacheoff = -1;
  to->attislocal = 1;
  to->attcollation = (i < numkeyatts) ?
   collationObjectId[i] : InvalidOid;






  if (atnum != 0)
  {

   const FormData_pg_attribute *from;

   Assert(atnum > 0);

   if (atnum > natts)
    elog(ERROR, "invalid column number %d", atnum);
   from = TupleDescAttr(heapTupDesc,
         AttrNumberGetAttrOffset(atnum));

   namecpy(&to->attname, &from->attname);
   to->atttypid = from->atttypid;
   to->attlen = from->attlen;
   to->attndims = from->attndims;
   to->atttypmod = from->atttypmod;
   to->attbyval = from->attbyval;
   to->attstorage = from->attstorage;
   to->attalign = from->attalign;
  }
  else
  {

   Node *indexkey;

   if (indexpr_item == ((void*)0))
    elog(ERROR, "too few entries in indexprs list");
   indexkey = (Node *) lfirst(indexpr_item);
   indexpr_item = lnext(indexInfo->ii_Expressions, indexpr_item);




   keyType = exprType(indexkey);
   tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(keyType));
   if (!HeapTupleIsValid(tuple))
    elog(ERROR, "cache lookup failed for type %u", keyType);
   typeTup = (Form_pg_type) GETSTRUCT(tuple);




   to->atttypid = keyType;
   to->attlen = typeTup->typlen;
   to->attbyval = typeTup->typbyval;
   to->attstorage = typeTup->typstorage;
   to->attalign = typeTup->typalign;
   to->atttypmod = exprTypmod(indexkey);

   ReleaseSysCache(tuple);
   CheckAttributeType(NameStr(to->attname),
          to->atttypid, to->attcollation,
          NIL, 0);
  }






  to->attrelid = InvalidOid;




  if (colnames_item == ((void*)0))
   elog(ERROR, "too few entries in colnames list");
  namestrcpy(&to->attname, (const char *) lfirst(colnames_item));
  colnames_item = lnext(indexColNames, colnames_item);






  keyType = amroutine->amkeytype;





  if (i < indexInfo->ii_NumIndexKeyAttrs)
  {
   tuple = SearchSysCache1(CLAOID, ObjectIdGetDatum(classObjectId[i]));
   if (!HeapTupleIsValid(tuple))
    elog(ERROR, "cache lookup failed for opclass %u",
      classObjectId[i]);
   opclassTup = (Form_pg_opclass) GETSTRUCT(tuple);
   if (OidIsValid(opclassTup->opckeytype))
    keyType = opclassTup->opckeytype;






   if (keyType == ANYELEMENTOID && opclassTup->opcintype == ANYARRAYOID)
   {
    keyType = get_base_element_type(to->atttypid);
    if (!OidIsValid(keyType))
     elog(ERROR, "could not get element type of array type %u",
       to->atttypid);
   }

   ReleaseSysCache(tuple);
  }





  if (OidIsValid(keyType) && keyType != to->atttypid)
  {
   tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(keyType));
   if (!HeapTupleIsValid(tuple))
    elog(ERROR, "cache lookup failed for type %u", keyType);
   typeTup = (Form_pg_type) GETSTRUCT(tuple);

   to->atttypid = keyType;
   to->atttypmod = -1;
   to->attlen = typeTup->typlen;
   to->attbyval = typeTup->typbyval;
   to->attalign = typeTup->typalign;
   to->attstorage = typeTup->typstorage;

   ReleaseSysCache(tuple);
  }
 }

 pfree(amroutine);

 return indexTupDesc;
}
