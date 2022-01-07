
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;


typedef int ctl ;
struct TYPE_20__ {scalar_t__ fn_oid; } ;
struct TYPE_21__ {int keysize; int entrysize; scalar_t__ typtype; int flags; scalar_t__ btree_opf; scalar_t__ btree_opintype; scalar_t__ hash_opf; scalar_t__ hash_opintype; scalar_t__ eq_opr; scalar_t__ cmp_proc; scalar_t__ hash_proc; scalar_t__ hash_extended_proc; scalar_t__ domainBaseType; int domainBaseTypmod; int * rngelemtype; int * tupDesc; TYPE_13__ hash_extended_proc_finfo; TYPE_13__ hash_proc_finfo; TYPE_13__ cmp_proc_finfo; TYPE_13__ eq_opr_finfo; scalar_t__ gt_opr; scalar_t__ lt_opr; struct TYPE_21__* nextDomain; int typcollation; int typelem; int typrelid; int typstorage; int typalign; int typbyval; int typlen; scalar_t__ type_id; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_22__ {scalar_t__ typtype; int typcollation; int typelem; int typrelid; int typstorage; int typalign; int typbyval; int typlen; int typname; int typisdefined; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__ HASHCTL ;
typedef TYPE_3__* Form_pg_type ;
typedef int Datum ;


 scalar_t__ ARRAY_EQ_OP ;
 scalar_t__ ARRAY_GT_OP ;
 scalar_t__ ARRAY_LT_OP ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int BTGreaterStrategyNumber ;
 int BTLessStrategyNumber ;
 int BTORDER_PROC ;
 int BTREE_AM_OID ;
 int CLAOID ;
 int CONSTROID ;
 int CacheMemoryContext ;
 int CacheRegisterRelcacheCallback (int ,int ) ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CreateCacheMemoryContext () ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ F_BTARRAYCMP ;
 scalar_t__ F_BTRECORDCMP ;
 scalar_t__ F_HASH_ARRAY ;
 scalar_t__ F_HASH_ARRAY_EXTENDED ;
 scalar_t__ F_HASH_RANGE ;
 scalar_t__ F_HASH_RANGE_EXTENDED ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GetDefaultOpClass (scalar_t__,int ) ;
 int HASHEXTENDED_PROC ;
 int HASHSTANDARD_PROC ;
 int HASH_AM_OID ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int HTEqualStrategyNumber ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 int MemSet (TYPE_1__*,int ,int) ;
 scalar_t__ NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RECORD_EQ_OP ;
 scalar_t__ RECORD_GT_OP ;
 scalar_t__ RECORD_LT_OP ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TCFLAGS_CHECKED_BTREE_OPCLASS ;
 int TCFLAGS_CHECKED_CMP_PROC ;
 int TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS ;
 int TCFLAGS_CHECKED_EQ_OPR ;
 int TCFLAGS_CHECKED_GT_OPR ;
 int TCFLAGS_CHECKED_HASH_EXTENDED_PROC ;
 int TCFLAGS_CHECKED_HASH_OPCLASS ;
 int TCFLAGS_CHECKED_HASH_PROC ;
 int TCFLAGS_CHECKED_LT_OPR ;
 int TYPECACHE_BTREE_OPFAMILY ;
 int TYPECACHE_CMP_PROC ;
 int TYPECACHE_CMP_PROC_FINFO ;
 int TYPECACHE_DOMAIN_BASE_INFO ;
 int TYPECACHE_DOMAIN_CONSTR_INFO ;
 int TYPECACHE_EQ_OPR ;
 int TYPECACHE_EQ_OPR_FINFO ;
 int TYPECACHE_GT_OPR ;
 int TYPECACHE_HASH_EXTENDED_PROC ;
 int TYPECACHE_HASH_EXTENDED_PROC_FINFO ;
 int TYPECACHE_HASH_OPFAMILY ;
 int TYPECACHE_HASH_PROC ;
 int TYPECACHE_HASH_PROC_FINFO ;
 int TYPECACHE_LT_OPR ;
 int TYPECACHE_RANGE_INFO ;
 int TYPECACHE_TUPDESC ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 scalar_t__ TYPTYPE_DOMAIN ;
 scalar_t__ TYPTYPE_RANGE ;
 int TypeCacheConstrCallback ;
 int * TypeCacheHash ;
 int TypeCacheOpcCallback ;
 int TypeCacheRelCallback ;
 int array_element_has_compare (TYPE_1__*) ;
 int array_element_has_equality (TYPE_1__*) ;
 int array_element_has_extended_hashing (TYPE_1__*) ;
 int array_element_has_hashing (TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;
 TYPE_1__* firstDomainTypeEntry ;
 int fmgr_info_cxt (scalar_t__,TYPE_13__*,int ) ;
 scalar_t__ getBaseTypeAndTypmod (scalar_t__,int*) ;
 void* get_opclass_family (scalar_t__) ;
 void* get_opclass_input_type (scalar_t__) ;
 scalar_t__ get_opcode (scalar_t__) ;
 scalar_t__ get_opfamily_member (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ get_opfamily_proc (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int * hash_create (char*,int,TYPE_1__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int load_domaintype_info (TYPE_1__*) ;
 int load_rangetype_info (TYPE_1__*) ;
 int load_typcache_tupdesc (TYPE_1__*) ;
 int range_element_has_extended_hashing (TYPE_1__*) ;
 int range_element_has_hashing (TYPE_1__*) ;
 int record_fields_have_compare (TYPE_1__*) ;
 int record_fields_have_equality (TYPE_1__*) ;

TypeCacheEntry *
lookup_type_cache(Oid type_id, int flags)
{
 TypeCacheEntry *typentry;
 bool found;

 if (TypeCacheHash == ((void*)0))
 {

  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(Oid);
  ctl.entrysize = sizeof(TypeCacheEntry);
  TypeCacheHash = hash_create("Type information cache", 64,
         &ctl, HASH_ELEM | HASH_BLOBS);


  CacheRegisterRelcacheCallback(TypeCacheRelCallback, (Datum) 0);
  CacheRegisterSyscacheCallback(CLAOID, TypeCacheOpcCallback, (Datum) 0);
  CacheRegisterSyscacheCallback(CONSTROID, TypeCacheConstrCallback, (Datum) 0);
  CacheRegisterSyscacheCallback(TYPEOID, TypeCacheConstrCallback, (Datum) 0);


  if (!CacheMemoryContext)
   CreateCacheMemoryContext();
 }


 typentry = (TypeCacheEntry *) hash_search(TypeCacheHash,
             (void *) &type_id,
             HASH_FIND, ((void*)0));
 if (typentry == ((void*)0))
 {







  HeapTuple tp;
  Form_pg_type typtup;

  tp = SearchSysCache1(TYPEOID, ObjectIdGetDatum(type_id));
  if (!HeapTupleIsValid(tp))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("type with OID %u does not exist", type_id)));
  typtup = (Form_pg_type) GETSTRUCT(tp);
  if (!typtup->typisdefined)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("type \"%s\" is only a shell",
       NameStr(typtup->typname))));


  typentry = (TypeCacheEntry *) hash_search(TypeCacheHash,
              (void *) &type_id,
              HASH_ENTER, &found);
  Assert(!found);

  MemSet(typentry, 0, sizeof(TypeCacheEntry));
  typentry->type_id = type_id;
  typentry->typlen = typtup->typlen;
  typentry->typbyval = typtup->typbyval;
  typentry->typalign = typtup->typalign;
  typentry->typstorage = typtup->typstorage;
  typentry->typtype = typtup->typtype;
  typentry->typrelid = typtup->typrelid;
  typentry->typelem = typtup->typelem;
  typentry->typcollation = typtup->typcollation;


  if (typentry->typtype == TYPTYPE_DOMAIN)
  {
   typentry->nextDomain = firstDomainTypeEntry;
   firstDomainTypeEntry = typentry;
  }

  ReleaseSysCache(tp);
 }





 if ((flags & (TYPECACHE_EQ_OPR | TYPECACHE_LT_OPR | TYPECACHE_GT_OPR |
      TYPECACHE_CMP_PROC |
      TYPECACHE_EQ_OPR_FINFO | TYPECACHE_CMP_PROC_FINFO |
      TYPECACHE_BTREE_OPFAMILY)) &&
  !(typentry->flags & TCFLAGS_CHECKED_BTREE_OPCLASS))
 {
  Oid opclass;

  opclass = GetDefaultOpClass(type_id, BTREE_AM_OID);
  if (OidIsValid(opclass))
  {
   typentry->btree_opf = get_opclass_family(opclass);
   typentry->btree_opintype = get_opclass_input_type(opclass);
  }
  else
  {
   typentry->btree_opf = typentry->btree_opintype = InvalidOid;
  }







  typentry->flags &= ~(TCFLAGS_CHECKED_EQ_OPR |
        TCFLAGS_CHECKED_LT_OPR |
        TCFLAGS_CHECKED_GT_OPR |
        TCFLAGS_CHECKED_CMP_PROC);
  typentry->flags |= TCFLAGS_CHECKED_BTREE_OPCLASS;
 }





 if ((flags & (TYPECACHE_EQ_OPR | TYPECACHE_EQ_OPR_FINFO)) &&
  !(typentry->flags & TCFLAGS_CHECKED_EQ_OPR) &&
  typentry->btree_opf == InvalidOid)
  flags |= TYPECACHE_HASH_OPFAMILY;

 if ((flags & (TYPECACHE_HASH_PROC | TYPECACHE_HASH_PROC_FINFO |
      TYPECACHE_HASH_EXTENDED_PROC |
      TYPECACHE_HASH_EXTENDED_PROC_FINFO |
      TYPECACHE_HASH_OPFAMILY)) &&
  !(typentry->flags & TCFLAGS_CHECKED_HASH_OPCLASS))
 {
  Oid opclass;

  opclass = GetDefaultOpClass(type_id, HASH_AM_OID);
  if (OidIsValid(opclass))
  {
   typentry->hash_opf = get_opclass_family(opclass);
   typentry->hash_opintype = get_opclass_input_type(opclass);
  }
  else
  {
   typentry->hash_opf = typentry->hash_opintype = InvalidOid;
  }






  typentry->flags &= ~(TCFLAGS_CHECKED_HASH_PROC |
        TCFLAGS_CHECKED_HASH_EXTENDED_PROC);
  typentry->flags |= TCFLAGS_CHECKED_HASH_OPCLASS;
 }




 if ((flags & (TYPECACHE_EQ_OPR | TYPECACHE_EQ_OPR_FINFO)) &&
  !(typentry->flags & TCFLAGS_CHECKED_EQ_OPR))
 {
  Oid eq_opr = InvalidOid;

  if (typentry->btree_opf != InvalidOid)
   eq_opr = get_opfamily_member(typentry->btree_opf,
           typentry->btree_opintype,
           typentry->btree_opintype,
           BTEqualStrategyNumber);
  if (eq_opr == InvalidOid &&
   typentry->hash_opf != InvalidOid)
   eq_opr = get_opfamily_member(typentry->hash_opf,
           typentry->hash_opintype,
           typentry->hash_opintype,
           HTEqualStrategyNumber);
  if (eq_opr == ARRAY_EQ_OP &&
   !array_element_has_equality(typentry))
   eq_opr = InvalidOid;
  else if (eq_opr == RECORD_EQ_OP &&
     !record_fields_have_equality(typentry))
   eq_opr = InvalidOid;


  if (typentry->eq_opr != eq_opr)
   typentry->eq_opr_finfo.fn_oid = InvalidOid;

  typentry->eq_opr = eq_opr;






  typentry->flags &= ~(TCFLAGS_CHECKED_HASH_PROC |
        TCFLAGS_CHECKED_HASH_EXTENDED_PROC);
  typentry->flags |= TCFLAGS_CHECKED_EQ_OPR;
 }
 if ((flags & TYPECACHE_LT_OPR) &&
  !(typentry->flags & TCFLAGS_CHECKED_LT_OPR))
 {
  Oid lt_opr = InvalidOid;

  if (typentry->btree_opf != InvalidOid)
   lt_opr = get_opfamily_member(typentry->btree_opf,
           typentry->btree_opintype,
           typentry->btree_opintype,
           BTLessStrategyNumber);





  if (lt_opr == ARRAY_LT_OP &&
   !array_element_has_compare(typentry))
   lt_opr = InvalidOid;
  else if (lt_opr == RECORD_LT_OP &&
     !record_fields_have_compare(typentry))
   lt_opr = InvalidOid;

  typentry->lt_opr = lt_opr;
  typentry->flags |= TCFLAGS_CHECKED_LT_OPR;
 }
 if ((flags & TYPECACHE_GT_OPR) &&
  !(typentry->flags & TCFLAGS_CHECKED_GT_OPR))
 {
  Oid gt_opr = InvalidOid;

  if (typentry->btree_opf != InvalidOid)
   gt_opr = get_opfamily_member(typentry->btree_opf,
           typentry->btree_opintype,
           typentry->btree_opintype,
           BTGreaterStrategyNumber);





  if (gt_opr == ARRAY_GT_OP &&
   !array_element_has_compare(typentry))
   gt_opr = InvalidOid;
  else if (gt_opr == RECORD_GT_OP &&
     !record_fields_have_compare(typentry))
   gt_opr = InvalidOid;

  typentry->gt_opr = gt_opr;
  typentry->flags |= TCFLAGS_CHECKED_GT_OPR;
 }
 if ((flags & (TYPECACHE_CMP_PROC | TYPECACHE_CMP_PROC_FINFO)) &&
  !(typentry->flags & TCFLAGS_CHECKED_CMP_PROC))
 {
  Oid cmp_proc = InvalidOid;

  if (typentry->btree_opf != InvalidOid)
   cmp_proc = get_opfamily_proc(typentry->btree_opf,
           typentry->btree_opintype,
           typentry->btree_opintype,
           BTORDER_PROC);





  if (cmp_proc == F_BTARRAYCMP &&
   !array_element_has_compare(typentry))
   cmp_proc = InvalidOid;
  else if (cmp_proc == F_BTRECORDCMP &&
     !record_fields_have_compare(typentry))
   cmp_proc = InvalidOid;


  if (typentry->cmp_proc != cmp_proc)
   typentry->cmp_proc_finfo.fn_oid = InvalidOid;

  typentry->cmp_proc = cmp_proc;
  typentry->flags |= TCFLAGS_CHECKED_CMP_PROC;
 }
 if ((flags & (TYPECACHE_HASH_PROC | TYPECACHE_HASH_PROC_FINFO)) &&
  !(typentry->flags & TCFLAGS_CHECKED_HASH_PROC))
 {
  Oid hash_proc = InvalidOid;





  if (typentry->hash_opf != InvalidOid &&
   (!OidIsValid(typentry->eq_opr) ||
    typentry->eq_opr == get_opfamily_member(typentry->hash_opf,
              typentry->hash_opintype,
              typentry->hash_opintype,
              HTEqualStrategyNumber)))
   hash_proc = get_opfamily_proc(typentry->hash_opf,
            typentry->hash_opintype,
            typentry->hash_opintype,
            HASHSTANDARD_PROC);






  if (hash_proc == F_HASH_ARRAY &&
   !array_element_has_hashing(typentry))
   hash_proc = InvalidOid;




  if (hash_proc == F_HASH_RANGE &&
   !range_element_has_hashing(typentry))
   hash_proc = InvalidOid;


  if (typentry->hash_proc != hash_proc)
   typentry->hash_proc_finfo.fn_oid = InvalidOid;

  typentry->hash_proc = hash_proc;
  typentry->flags |= TCFLAGS_CHECKED_HASH_PROC;
 }
 if ((flags & (TYPECACHE_HASH_EXTENDED_PROC |
      TYPECACHE_HASH_EXTENDED_PROC_FINFO)) &&
  !(typentry->flags & TCFLAGS_CHECKED_HASH_EXTENDED_PROC))
 {
  Oid hash_extended_proc = InvalidOid;





  if (typentry->hash_opf != InvalidOid &&
   (!OidIsValid(typentry->eq_opr) ||
    typentry->eq_opr == get_opfamily_member(typentry->hash_opf,
              typentry->hash_opintype,
              typentry->hash_opintype,
              HTEqualStrategyNumber)))
   hash_extended_proc = get_opfamily_proc(typentry->hash_opf,
               typentry->hash_opintype,
               typentry->hash_opintype,
               HASHEXTENDED_PROC);






  if (hash_extended_proc == F_HASH_ARRAY_EXTENDED &&
   !array_element_has_extended_hashing(typentry))
   hash_extended_proc = InvalidOid;




  if (hash_extended_proc == F_HASH_RANGE_EXTENDED &&
   !range_element_has_extended_hashing(typentry))
   hash_extended_proc = InvalidOid;


  if (typentry->hash_extended_proc != hash_extended_proc)
   typentry->hash_extended_proc_finfo.fn_oid = InvalidOid;

  typentry->hash_extended_proc = hash_extended_proc;
  typentry->flags |= TCFLAGS_CHECKED_HASH_EXTENDED_PROC;
 }
 if ((flags & TYPECACHE_EQ_OPR_FINFO) &&
  typentry->eq_opr_finfo.fn_oid == InvalidOid &&
  typentry->eq_opr != InvalidOid)
 {
  Oid eq_opr_func;

  eq_opr_func = get_opcode(typentry->eq_opr);
  if (eq_opr_func != InvalidOid)
   fmgr_info_cxt(eq_opr_func, &typentry->eq_opr_finfo,
        CacheMemoryContext);
 }
 if ((flags & TYPECACHE_CMP_PROC_FINFO) &&
  typentry->cmp_proc_finfo.fn_oid == InvalidOid &&
  typentry->cmp_proc != InvalidOid)
 {
  fmgr_info_cxt(typentry->cmp_proc, &typentry->cmp_proc_finfo,
       CacheMemoryContext);
 }
 if ((flags & TYPECACHE_HASH_PROC_FINFO) &&
  typentry->hash_proc_finfo.fn_oid == InvalidOid &&
  typentry->hash_proc != InvalidOid)
 {
  fmgr_info_cxt(typentry->hash_proc, &typentry->hash_proc_finfo,
       CacheMemoryContext);
 }
 if ((flags & TYPECACHE_HASH_EXTENDED_PROC_FINFO) &&
  typentry->hash_extended_proc_finfo.fn_oid == InvalidOid &&
  typentry->hash_extended_proc != InvalidOid)
 {
  fmgr_info_cxt(typentry->hash_extended_proc,
       &typentry->hash_extended_proc_finfo,
       CacheMemoryContext);
 }




 if ((flags & TYPECACHE_TUPDESC) &&
  typentry->tupDesc == ((void*)0) &&
  typentry->typtype == TYPTYPE_COMPOSITE)
 {
  load_typcache_tupdesc(typentry);
 }




 if ((flags & TYPECACHE_RANGE_INFO) &&
  typentry->rngelemtype == ((void*)0) &&
  typentry->typtype == TYPTYPE_RANGE)
 {
  load_rangetype_info(typentry);
 }




 if ((flags & TYPECACHE_DOMAIN_BASE_INFO) &&
  typentry->domainBaseType == InvalidOid &&
  typentry->typtype == TYPTYPE_DOMAIN)
 {
  typentry->domainBaseTypmod = -1;
  typentry->domainBaseType =
   getBaseTypeAndTypmod(type_id, &typentry->domainBaseTypmod);
 }
 if ((flags & TYPECACHE_DOMAIN_CONSTR_INFO) &&
  (typentry->flags & TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS) == 0 &&
  typentry->typtype == TYPTYPE_DOMAIN)
 {
  load_domaintype_info(typentry);
 }

 return typentry;
}
