
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_11__ {scalar_t__ dicttemplate; int dictname; } ;
struct TYPE_10__ {scalar_t__ tmpllexize; scalar_t__ tmplinit; } ;
struct TYPE_9__ {int keysize; int entrysize; scalar_t__ dictId; int isvalid; scalar_t__ lexizeOid; int dictCtx; int lexize; int dictData; } ;
typedef TYPE_1__ TSDictionaryCacheEntry ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__ HASHCTL ;
typedef TYPE_3__* Form_pg_ts_template ;
typedef TYPE_4__* Form_pg_ts_dict ;
typedef int Datum ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Anum_pg_ts_dict_dictinitoption ;
 int Assert (int) ;
 int CacheMemoryContext ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CreateCacheMemoryContext () ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int HeapTupleIsValid (int ) ;
 int InvalidateTSCacheCallBack ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MemoryContextCopyAndSetIdentifier (int ,int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSetIdentifier (int ,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidFunctionCall1 (scalar_t__,int ) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PointerGetDatum (int *) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int TSDICTOID ;
 int * TSDictionaryCacheHash ;
 int TSTEMPLATEOID ;
 int * deserialize_deflist (int ) ;
 int elog (int ,char*,scalar_t__) ;
 int fmgr_info_cxt (scalar_t__,int *,int ) ;
 int * hash_create (char*,int,TYPE_1__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 TYPE_1__* lastUsedDictionary ;

TSDictionaryCacheEntry *
lookup_ts_dictionary_cache(Oid dictId)
{
 TSDictionaryCacheEntry *entry;

 if (TSDictionaryCacheHash == ((void*)0))
 {

  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(Oid);
  ctl.entrysize = sizeof(TSDictionaryCacheEntry);
  TSDictionaryCacheHash = hash_create("Tsearch dictionary cache", 8,
           &ctl, HASH_ELEM | HASH_BLOBS);

  CacheRegisterSyscacheCallback(TSDICTOID, InvalidateTSCacheCallBack,
           PointerGetDatum(TSDictionaryCacheHash));
  CacheRegisterSyscacheCallback(TSTEMPLATEOID, InvalidateTSCacheCallBack,
           PointerGetDatum(TSDictionaryCacheHash));


  if (!CacheMemoryContext)
   CreateCacheMemoryContext();
 }


 if (lastUsedDictionary && lastUsedDictionary->dictId == dictId &&
  lastUsedDictionary->isvalid)
  return lastUsedDictionary;


 entry = (TSDictionaryCacheEntry *) hash_search(TSDictionaryCacheHash,
               (void *) &dictId,
               HASH_FIND, ((void*)0));
 if (entry == ((void*)0) || !entry->isvalid)
 {




  HeapTuple tpdict,
     tptmpl;
  Form_pg_ts_dict dict;
  Form_pg_ts_template template;
  MemoryContext saveCtx;

  tpdict = SearchSysCache1(TSDICTOID, ObjectIdGetDatum(dictId));
  if (!HeapTupleIsValid(tpdict))
   elog(ERROR, "cache lookup failed for text search dictionary %u",
     dictId);
  dict = (Form_pg_ts_dict) GETSTRUCT(tpdict);




  if (!OidIsValid(dict->dicttemplate))
   elog(ERROR, "text search dictionary %u has no template", dictId);




  tptmpl = SearchSysCache1(TSTEMPLATEOID,
         ObjectIdGetDatum(dict->dicttemplate));
  if (!HeapTupleIsValid(tptmpl))
   elog(ERROR, "cache lookup failed for text search template %u",
     dict->dicttemplate);
  template = (Form_pg_ts_template) GETSTRUCT(tptmpl);




  if (!OidIsValid(template->tmpllexize))
   elog(ERROR, "text search template %u has no lexize method",
     template->tmpllexize);

  if (entry == ((void*)0))
  {
   bool found;


   entry = (TSDictionaryCacheEntry *)
    hash_search(TSDictionaryCacheHash,
       (void *) &dictId,
       HASH_ENTER, &found);
   Assert(!found);


   saveCtx = AllocSetContextCreate(CacheMemoryContext,
           "TS dictionary",
           ALLOCSET_SMALL_SIZES);
   MemoryContextCopyAndSetIdentifier(saveCtx, NameStr(dict->dictname));
  }
  else
  {

   saveCtx = entry->dictCtx;

   MemoryContextSetIdentifier(saveCtx, ((void*)0));
   MemoryContextReset(saveCtx);
   MemoryContextCopyAndSetIdentifier(saveCtx, NameStr(dict->dictname));
  }

  MemSet(entry, 0, sizeof(TSDictionaryCacheEntry));
  entry->dictId = dictId;
  entry->dictCtx = saveCtx;

  entry->lexizeOid = template->tmpllexize;

  if (OidIsValid(template->tmplinit))
  {
   List *dictoptions;
   Datum opt;
   bool isnull;
   MemoryContext oldcontext;





   oldcontext = MemoryContextSwitchTo(entry->dictCtx);

   opt = SysCacheGetAttr(TSDICTOID, tpdict,
          Anum_pg_ts_dict_dictinitoption,
          &isnull);
   if (isnull)
    dictoptions = NIL;
   else
    dictoptions = deserialize_deflist(opt);

   entry->dictData =
    DatumGetPointer(OidFunctionCall1(template->tmplinit,
             PointerGetDatum(dictoptions)));

   MemoryContextSwitchTo(oldcontext);
  }

  ReleaseSysCache(tptmpl);
  ReleaseSysCache(tpdict);

  fmgr_info_cxt(entry->lexizeOid, &entry->lexize, entry->dictCtx);

  entry->isvalid = 1;
 }

 lastUsedDictionary = entry;

 return entry;
}
