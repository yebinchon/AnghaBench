
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* fn_oid; } ;
struct TYPE_6__ {int valid; TYPE_4__ cast_func_finfo; TYPE_4__ eq_opr_finfo; } ;
struct TYPE_5__ {scalar_t__ typeid; scalar_t__ eq_opr; } ;
typedef TYPE_1__ RI_CompareKey ;
typedef TYPE_2__ RI_CompareHashEntry ;
typedef scalar_t__ Oid ;
typedef scalar_t__ CoercionPathType ;


 int Assert (int) ;
 int COERCION_IMPLICIT ;
 scalar_t__ COERCION_PATH_FUNC ;
 scalar_t__ COERCION_PATH_RELABELTYPE ;
 int ERROR ;
 int HASH_ENTER ;
 void* InvalidOid ;
 int IsBinaryCoercible (scalar_t__,scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int TopMemoryContext ;
 int elog (int ,char*,int ,int ) ;
 scalar_t__ find_coercion_pathway (scalar_t__,scalar_t__,int ,scalar_t__*) ;
 int fmgr_info_cxt (scalar_t__,TYPE_4__*,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_opcode (scalar_t__) ;
 scalar_t__ hash_search (int ,void*,int ,int*) ;
 int op_input_types (scalar_t__,scalar_t__*,scalar_t__*) ;
 int ri_InitHashTables () ;
 int ri_compare_cache ;

__attribute__((used)) static RI_CompareHashEntry *
ri_HashCompareOp(Oid eq_opr, Oid typeid)
{
 RI_CompareKey key;
 RI_CompareHashEntry *entry;
 bool found;




 if (!ri_compare_cache)
  ri_InitHashTables();





 key.eq_opr = eq_opr;
 key.typeid = typeid;
 entry = (RI_CompareHashEntry *) hash_search(ri_compare_cache,
            (void *) &key,
            HASH_ENTER, &found);
 if (!found)
  entry->valid = 0;






 if (!entry->valid)
 {
  Oid lefttype,
     righttype,
     castfunc;
  CoercionPathType pathtype;


  fmgr_info_cxt(get_opcode(eq_opr), &entry->eq_opr_finfo,
       TopMemoryContext);
  op_input_types(eq_opr, &lefttype, &righttype);
  Assert(lefttype == righttype);
  if (typeid == lefttype)
   castfunc = InvalidOid;
  else
  {
   pathtype = find_coercion_pathway(lefttype, typeid,
            COERCION_IMPLICIT,
            &castfunc);
   if (pathtype != COERCION_PATH_FUNC &&
    pathtype != COERCION_PATH_RELABELTYPE)
   {






    if (!IsBinaryCoercible(typeid, lefttype))
     elog(ERROR, "no conversion function from %s to %s",
       format_type_be(typeid),
       format_type_be(lefttype));
   }
  }
  if (OidIsValid(castfunc))
   fmgr_info_cxt(castfunc, &entry->cast_func_finfo,
        TopMemoryContext);
  else
   entry->cast_func_finfo.fn_oid = InvalidOid;
  entry->valid = 1;
 }

 return entry;
}
