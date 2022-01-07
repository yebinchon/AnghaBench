
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int int32 ;
struct TYPE_22__ {char typtype; int typbyval; int typlen; char typalign; int domainBaseType; int typelem; int domainBaseTypmod; } ;
typedef TYPE_8__ TypeCacheEntry ;
struct TYPE_23__ {int trftypes; int langid; } ;
struct TYPE_20__ {int typfunc; int typioparam; } ;
struct TYPE_18__ {int fn_oid; } ;
struct TYPE_19__ {TYPE_4__ recinfunc; scalar_t__ natts; int * atts; int tupdescid; TYPE_8__* typentry; int * recdesc; } ;
struct TYPE_17__ {int typtransform; } ;
struct TYPE_16__ {TYPE_10__* elm; int elmbasetype; } ;
struct TYPE_15__ {TYPE_10__* base; int * domain_info; } ;
struct TYPE_21__ {TYPE_6__ scalar; TYPE_5__ tuple; TYPE_3__ transform; TYPE_2__ array; TYPE_1__ domain; } ;
struct TYPE_14__ {int typoid; int typbyval; int typlen; char typalign; TYPE_7__ u; int func; int mcxt; int typmod; } ;
typedef TYPE_9__ PLyProcedure ;
typedef TYPE_10__ PLyObToDatum ;
typedef int Oid ;
typedef int MemoryContext ;




 int INVALID_TUPLEDESC_IDENTIFIER ;
 int InvalidOid ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 scalar_t__ OidIsValid (int) ;
 int PLyObject_ToBool ;
 int PLyObject_ToBytea ;
 int PLyObject_ToComposite ;
 int PLyObject_ToDomain ;
 int PLyObject_ToScalar ;
 int PLyObject_ToTransform ;
 int PLySequence_ToArray ;
 int RECORDOID ;
 int TYPECACHE_DOMAIN_BASE_INFO ;
 char TYPTYPE_COMPOSITE ;
 char TYPTYPE_DOMAIN ;
 int check_stack_depth () ;
 int fmgr_info_cxt (int,int *,int ) ;
 int getBaseType (int) ;
 int getTypeInputInfo (int,int*,int *) ;
 int get_transform_tosql (int,int ,int ) ;
 TYPE_8__* lookup_type_cache (int,int ) ;

void
PLy_output_setup_func(PLyObToDatum *arg, MemoryContext arg_mcxt,
       Oid typeOid, int32 typmod,
       PLyProcedure *proc)
{
 TypeCacheEntry *typentry;
 char typtype;
 Oid trfuncid;
 Oid typinput;


 check_stack_depth();

 arg->typoid = typeOid;
 arg->typmod = typmod;
 arg->mcxt = arg_mcxt;






 if (typeOid != RECORDOID)
 {
  typentry = lookup_type_cache(typeOid, TYPECACHE_DOMAIN_BASE_INFO);
  typtype = typentry->typtype;
  arg->typbyval = typentry->typbyval;
  arg->typlen = typentry->typlen;
  arg->typalign = typentry->typalign;
 }
 else
 {
  typentry = ((void*)0);
  typtype = TYPTYPE_COMPOSITE;

  arg->typbyval = 0;
  arg->typlen = -1;
  arg->typalign = 'd';
 }
 if (typtype == TYPTYPE_DOMAIN)
 {

  arg->func = PLyObject_ToDomain;
  arg->u.domain.domain_info = ((void*)0);

  arg->u.domain.base = (PLyObToDatum *)
   MemoryContextAllocZero(arg_mcxt, sizeof(PLyObToDatum));
  PLy_output_setup_func(arg->u.domain.base, arg_mcxt,
         typentry->domainBaseType,
         typentry->domainBaseTypmod,
         proc);
 }
 else if (typentry &&
    OidIsValid(typentry->typelem) && typentry->typlen == -1)
 {

  arg->func = PLySequence_ToArray;


  arg->u.array.elmbasetype = getBaseType(typentry->typelem);

  arg->u.array.elm = (PLyObToDatum *)
   MemoryContextAllocZero(arg_mcxt, sizeof(PLyObToDatum));
  PLy_output_setup_func(arg->u.array.elm, arg_mcxt,
         typentry->typelem, typmod,
         proc);
 }
 else if ((trfuncid = get_transform_tosql(typeOid,
            proc->langid,
            proc->trftypes)))
 {
  arg->func = PLyObject_ToTransform;
  fmgr_info_cxt(trfuncid, &arg->u.transform.typtransform, arg_mcxt);
 }
 else if (typtype == TYPTYPE_COMPOSITE)
 {

  arg->func = PLyObject_ToComposite;

  arg->u.tuple.recdesc = ((void*)0);
  arg->u.tuple.typentry = typentry;
  arg->u.tuple.tupdescid = INVALID_TUPLEDESC_IDENTIFIER;
  arg->u.tuple.atts = ((void*)0);
  arg->u.tuple.natts = 0;

  arg->u.tuple.recinfunc.fn_oid = InvalidOid;
 }
 else
 {

  switch (typeOid)
  {
   case 129:
    arg->func = PLyObject_ToBool;
    break;
   case 128:
    arg->func = PLyObject_ToBytea;
    break;
   default:
    arg->func = PLyObject_ToScalar;
    getTypeInputInfo(typeOid, &typinput, &arg->u.scalar.typioparam);
    fmgr_info_cxt(typinput, &arg->u.scalar.typfunc, arg_mcxt);
    break;
  }
 }
}
