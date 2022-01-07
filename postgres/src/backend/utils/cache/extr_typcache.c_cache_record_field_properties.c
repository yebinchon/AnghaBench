
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type_id; int flags; scalar_t__ typtype; scalar_t__ domainBaseType; int domainBaseTypmod; int cmp_proc; int eq_opr; TYPE_2__* tupDesc; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_13__ {scalar_t__ atttypid; scalar_t__ attisdropped; } ;
struct TYPE_12__ {int natts; } ;
typedef TYPE_3__* Form_pg_attribute ;


 int DecrTupleDescRefCount (TYPE_2__*) ;
 int IncrTupleDescRefCount (TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 int OidIsValid (int ) ;
 scalar_t__ RECORDOID ;
 int TCFLAGS_CHECKED_FIELD_PROPERTIES ;
 int TCFLAGS_DOMAIN_BASE_IS_COMPOSITE ;
 int TCFLAGS_HAVE_FIELD_COMPARE ;
 int TCFLAGS_HAVE_FIELD_EQUALITY ;
 int TYPECACHE_CMP_PROC ;
 int TYPECACHE_EQ_OPR ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 scalar_t__ TYPTYPE_DOMAIN ;
 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 scalar_t__ getBaseTypeAndTypmod (scalar_t__,int*) ;
 int load_typcache_tupdesc (TYPE_1__*) ;
 TYPE_1__* lookup_type_cache (scalar_t__,int) ;

__attribute__((used)) static void
cache_record_field_properties(TypeCacheEntry *typentry)
{





 if (typentry->type_id == RECORDOID)
  typentry->flags |= (TCFLAGS_HAVE_FIELD_EQUALITY |
       TCFLAGS_HAVE_FIELD_COMPARE);
 else if (typentry->typtype == TYPTYPE_COMPOSITE)
 {
  TupleDesc tupdesc;
  int newflags;
  int i;


  if (typentry->tupDesc == ((void*)0))
   load_typcache_tupdesc(typentry);
  tupdesc = typentry->tupDesc;


  IncrTupleDescRefCount(tupdesc);


  newflags = (TCFLAGS_HAVE_FIELD_EQUALITY |
     TCFLAGS_HAVE_FIELD_COMPARE);
  for (i = 0; i < tupdesc->natts; i++)
  {
   TypeCacheEntry *fieldentry;
   Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

   if (attr->attisdropped)
    continue;

   fieldentry = lookup_type_cache(attr->atttypid,
             TYPECACHE_EQ_OPR |
             TYPECACHE_CMP_PROC);
   if (!OidIsValid(fieldentry->eq_opr))
    newflags &= ~TCFLAGS_HAVE_FIELD_EQUALITY;
   if (!OidIsValid(fieldentry->cmp_proc))
    newflags &= ~TCFLAGS_HAVE_FIELD_COMPARE;


   if (newflags == 0)
    break;
  }
  typentry->flags |= newflags;

  DecrTupleDescRefCount(tupdesc);
 }
 else if (typentry->typtype == TYPTYPE_DOMAIN)
 {

  TypeCacheEntry *baseentry;


  if (typentry->domainBaseType == InvalidOid)
  {
   typentry->domainBaseTypmod = -1;
   typentry->domainBaseType =
    getBaseTypeAndTypmod(typentry->type_id,
          &typentry->domainBaseTypmod);
  }
  baseentry = lookup_type_cache(typentry->domainBaseType,
           TYPECACHE_EQ_OPR |
           TYPECACHE_CMP_PROC);
  if (baseentry->typtype == TYPTYPE_COMPOSITE)
  {
   typentry->flags |= TCFLAGS_DOMAIN_BASE_IS_COMPOSITE;
   typentry->flags |= baseentry->flags & (TCFLAGS_HAVE_FIELD_EQUALITY |
               TCFLAGS_HAVE_FIELD_COMPARE);
  }
 }
 typentry->flags |= TCFLAGS_CHECKED_FIELD_PROPERTIES;
}
