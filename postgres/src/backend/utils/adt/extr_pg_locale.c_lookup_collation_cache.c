
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_8__ {int flags_valid; int collate_is_c; int ctype_is_c; scalar_t__ locale; } ;
typedef TYPE_1__ collation_cache_entry ;
struct TYPE_10__ {int collctype; int collcollate; } ;
struct TYPE_9__ {int keysize; int entrysize; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__ HASHCTL ;
typedef TYPE_3__* Form_pg_collation ;


 int Assert (int) ;
 int COLLOID ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int * collation_cache ;
 int elog (int ,char*,scalar_t__) ;
 int * hash_create (char*,int,TYPE_2__*,int) ;
 TYPE_1__* hash_search (int *,scalar_t__*,int ,int*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static collation_cache_entry *
lookup_collation_cache(Oid collation, bool set_flags)
{
 collation_cache_entry *cache_entry;
 bool found;

 Assert(OidIsValid(collation));
 Assert(collation != DEFAULT_COLLATION_OID);

 if (collation_cache == ((void*)0))
 {

  HASHCTL ctl;

  memset(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(Oid);
  ctl.entrysize = sizeof(collation_cache_entry);
  collation_cache = hash_create("Collation cache", 100, &ctl,
           HASH_ELEM | HASH_BLOBS);
 }

 cache_entry = hash_search(collation_cache, &collation, HASH_ENTER, &found);
 if (!found)
 {




  cache_entry->flags_valid = 0;
  cache_entry->locale = 0;
 }

 if (set_flags && !cache_entry->flags_valid)
 {

  HeapTuple tp;
  Form_pg_collation collform;
  const char *collcollate;
  const char *collctype;

  tp = SearchSysCache1(COLLOID, ObjectIdGetDatum(collation));
  if (!HeapTupleIsValid(tp))
   elog(ERROR, "cache lookup failed for collation %u", collation);
  collform = (Form_pg_collation) GETSTRUCT(tp);

  collcollate = NameStr(collform->collcollate);
  collctype = NameStr(collform->collctype);

  cache_entry->collate_is_c = ((strcmp(collcollate, "C") == 0) ||
          (strcmp(collcollate, "POSIX") == 0));
  cache_entry->ctype_is_c = ((strcmp(collctype, "C") == 0) ||
           (strcmp(collctype, "POSIX") == 0));

  cache_entry->flags_valid = 1;

  ReleaseSysCache(tp);
 }

 return cache_entry;
}
