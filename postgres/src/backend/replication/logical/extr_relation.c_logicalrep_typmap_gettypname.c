
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typname; int nspname; int remoteid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ LogicalRepTyp ;


 int Assert (int ) ;
 scalar_t__ FirstGenbkiObjectId ;
 int HASH_FIND ;
 int * LogicalRepTypMap ;
 int OidIsValid (int ) ;
 char* format_type_be (scalar_t__) ;
 int get_typisdefined (scalar_t__) ;
 TYPE_1__* hash_search (int *,void*,int ,int*) ;
 char* psprintf (char*,scalar_t__,...) ;

char *
logicalrep_typmap_gettypname(Oid remoteid)
{
 LogicalRepTyp *entry;
 bool found;


 if (remoteid < FirstGenbkiObjectId)
 {
  if (!get_typisdefined(remoteid))
  {




   return psprintf("unrecognized %u", remoteid);
  }

  return format_type_be(remoteid);
 }

 if (LogicalRepTypMap == ((void*)0))
 {






  return psprintf("unrecognized %u", remoteid);
 }


 entry = hash_search(LogicalRepTypMap, (void *) &remoteid,
      HASH_FIND, &found);
 if (!found)
  return psprintf("unrecognized %u", remoteid);

 Assert(OidIsValid(entry->remoteid));
 return psprintf("%s.%s", entry->nspname, entry->typname);
}
