
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nulls ;
typedef int float4 ;
struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {int enumsortorder; int oid; int enumlabel; } ;
struct TYPE_6__ {int tuple; } ;
typedef int Relation ;
typedef int Oid ;
typedef int NameData ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_enum ;
typedef int Datum ;
typedef TYPE_3__ CatCList ;


 int Anum_pg_enum_enumlabel ;
 int Anum_pg_enum_enumsortorder ;
 int Anum_pg_enum_enumtypid ;
 int Anum_pg_enum_oid ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleInsert (int ,int *) ;
 int ENUMTYPOIDNAME ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INVALID_NAME ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int EnumOidIndexId ;
 int EnumRelationId ;
 int ExclusiveLock ;
 int Float4GetDatum (int) ;
 scalar_t__ GETSTRUCT (int *) ;
 int GetNewOidWithIndex (int ,int ,int) ;
 int HASH_ENTER ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 scalar_t__ IsBinaryUpgrade ;
 int LockDatabaseObject (int ,int,int ,int ) ;
 int NAMEDATALEN ;
 int NOTICE ;
 int NameGetDatum (int *) ;
 int NameStr (int ) ;
 int Natts_pg_enum ;
 int ObjectIdGetDatum (int) ;
 int OidIsValid (int) ;
 int RelationGetDescr (int ) ;
 int ReleaseCatCacheList (TYPE_3__*) ;
 int ReleaseSysCache (int *) ;
 int RenumberEnumType (int ,int **,int) ;
 int RowExclusiveLock ;
 int * SearchSysCache2 (int ,int ,int ) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;
 int TypeRelationId ;
 int binary_upgrade_next_pg_enum_oid ;
 int * enum_blacklist ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*,...) ;
 int hash_search (int *,int*,int ,int *) ;
 int * heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int *) ;
 int init_enum_blacklist () ;
 int memset (int*,int,int) ;
 int namestrcpy (int *,char const*) ;
 scalar_t__ palloc (int) ;
 int pfree (int **) ;
 int qsort (int **,int,int,int ) ;
 int sort_order_cmp ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlen (char const*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AddEnumLabel(Oid enumTypeOid,
    const char *newVal,
    const char *neighbor,
    bool newValIsAfter,
    bool skipIfExists)
{
 Relation pg_enum;
 Oid newOid;
 Datum values[Natts_pg_enum];
 bool nulls[Natts_pg_enum];
 NameData enumlabel;
 HeapTuple enum_tup;
 float4 newelemorder;
 HeapTuple *existing;
 CatCList *list;
 int nelems;
 int i;


 if (strlen(newVal) > (NAMEDATALEN - 1))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_NAME),
     errmsg("invalid enum label \"%s\"", newVal),
     errdetail("Labels must be %d characters or less.",
         NAMEDATALEN - 1)));
 LockDatabaseObject(TypeRelationId, enumTypeOid, 0, ExclusiveLock);






 enum_tup = SearchSysCache2(ENUMTYPOIDNAME,
          ObjectIdGetDatum(enumTypeOid),
          CStringGetDatum(newVal));
 if (HeapTupleIsValid(enum_tup))
 {
  ReleaseSysCache(enum_tup);
  if (skipIfExists)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("enum label \"%s\" already exists, skipping",
       newVal)));
   return;
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("enum label \"%s\" already exists",
       newVal)));
 }

 pg_enum = table_open(EnumRelationId, RowExclusiveLock);


restart:


 list = SearchSysCacheList1(ENUMTYPOIDNAME,
          ObjectIdGetDatum(enumTypeOid));
 nelems = list->n_members;


 existing = (HeapTuple *) palloc(nelems * sizeof(HeapTuple));
 for (i = 0; i < nelems; i++)
  existing[i] = &(list->members[i]->tuple);

 qsort(existing, nelems, sizeof(HeapTuple), sort_order_cmp);

 if (neighbor == ((void*)0))
 {




  if (nelems > 0)
  {
   Form_pg_enum en = (Form_pg_enum) GETSTRUCT(existing[nelems - 1]);

   newelemorder = en->enumsortorder + 1;
  }
  else
   newelemorder = 1;
 }
 else
 {

  int nbr_index;
  int other_nbr_index;
  Form_pg_enum nbr_en;
  Form_pg_enum other_nbr_en;


  for (nbr_index = 0; nbr_index < nelems; nbr_index++)
  {
   Form_pg_enum en = (Form_pg_enum) GETSTRUCT(existing[nbr_index]);

   if (strcmp(NameStr(en->enumlabel), neighbor) == 0)
    break;
  }
  if (nbr_index >= nelems)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("\"%s\" is not an existing enum label",
       neighbor)));
  nbr_en = (Form_pg_enum) GETSTRUCT(existing[nbr_index]);
  if (newValIsAfter)
   other_nbr_index = nbr_index + 1;
  else
   other_nbr_index = nbr_index - 1;

  if (other_nbr_index < 0)
   newelemorder = nbr_en->enumsortorder - 1;
  else if (other_nbr_index >= nelems)
   newelemorder = nbr_en->enumsortorder + 1;
  else
  {







   volatile float4 midpoint;

   other_nbr_en = (Form_pg_enum) GETSTRUCT(existing[other_nbr_index]);
   midpoint = (nbr_en->enumsortorder +
      other_nbr_en->enumsortorder) / 2;

   if (midpoint == nbr_en->enumsortorder ||
    midpoint == other_nbr_en->enumsortorder)
   {
    RenumberEnumType(pg_enum, existing, nelems);

    pfree(existing);
    ReleaseCatCacheList(list);
    goto restart;
   }

   newelemorder = midpoint;
  }
 }


 if (IsBinaryUpgrade)
 {
  if (!OidIsValid(binary_upgrade_next_pg_enum_oid))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("pg_enum OID value not set when in binary upgrade mode")));






  if (neighbor != ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("ALTER TYPE ADD BEFORE/AFTER is incompatible with binary upgrade")));

  newOid = binary_upgrade_next_pg_enum_oid;
  binary_upgrade_next_pg_enum_oid = InvalidOid;
 }
 else
 {







  for (;;)
  {
   bool sorts_ok;


   newOid = GetNewOidWithIndex(pg_enum, EnumOidIndexId,
          Anum_pg_enum_oid);







   sorts_ok = 1;
   for (i = 0; i < nelems; i++)
   {
    HeapTuple exists_tup = existing[i];
    Form_pg_enum exists_en = (Form_pg_enum) GETSTRUCT(exists_tup);
    Oid exists_oid = exists_en->oid;

    if (exists_oid & 1)
     continue;

    if (exists_en->enumsortorder < newelemorder)
    {

     if (exists_oid >= newOid)
     {
      sorts_ok = 0;
      break;
     }
    }
    else
    {

     if (exists_oid <= newOid)
     {
      sorts_ok = 0;
      break;
     }
    }
   }

   if (sorts_ok)
   {

    if ((newOid & 1) == 0)
     break;






   }
   else
   {





    if (newOid & 1)
     break;





   }
  }
 }


 pfree(existing);
 ReleaseCatCacheList(list);


 memset(nulls, 0, sizeof(nulls));
 values[Anum_pg_enum_oid - 1] = ObjectIdGetDatum(newOid);
 values[Anum_pg_enum_enumtypid - 1] = ObjectIdGetDatum(enumTypeOid);
 values[Anum_pg_enum_enumsortorder - 1] = Float4GetDatum(newelemorder);
 namestrcpy(&enumlabel, newVal);
 values[Anum_pg_enum_enumlabel - 1] = NameGetDatum(&enumlabel);
 enum_tup = heap_form_tuple(RelationGetDescr(pg_enum), values, nulls);
 CatalogTupleInsert(pg_enum, enum_tup);
 heap_freetuple(enum_tup);

 table_close(pg_enum, RowExclusiveLock);


 if (enum_blacklist == ((void*)0))
  init_enum_blacklist();


 (void) hash_search(enum_blacklist, &newOid, HASH_ENTER, ((void*)0));
}
