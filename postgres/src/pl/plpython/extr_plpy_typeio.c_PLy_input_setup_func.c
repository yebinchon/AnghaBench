
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_17__ {char typtype; int typbyval; int typlen; char typalign; int domainBaseType; int typelem; int domainBaseTypmod; } ;
typedef TYPE_6__ TypeCacheEntry ;
struct TYPE_15__ {int typfunc; } ;
struct TYPE_14__ {scalar_t__ natts; int * atts; int tupdescid; TYPE_6__* typentry; int * recdesc; } ;
struct TYPE_13__ {int typtransform; } ;
struct TYPE_12__ {TYPE_8__* elm; } ;
struct TYPE_16__ {TYPE_4__ scalar; TYPE_3__ tuple; TYPE_2__ transform; TYPE_1__ array; } ;
struct TYPE_19__ {int typoid; int typbyval; int typlen; char typalign; TYPE_5__ u; int func; int mcxt; int typmod; } ;
struct TYPE_18__ {int trftypes; int langid; } ;
typedef TYPE_7__ PLyProcedure ;
typedef TYPE_8__ PLyDatumToOb ;
typedef int Oid ;
typedef int MemoryContext ;
 int INVALID_TUPLEDESC_IDENTIFIER ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;


 scalar_t__ OidIsValid (int) ;
 int PLyBool_FromBool ;
 int PLyBytes_FromBytea ;
 int PLyDecimal_FromNumeric ;
 int PLyDict_FromComposite ;
 int PLyFloat_FromFloat4 ;
 int PLyFloat_FromFloat8 ;
 int PLyInt_FromInt16 ;
 int PLyInt_FromInt32 ;
 int PLyList_FromArray ;
 int PLyLong_FromInt64 ;
 int PLyLong_FromOid ;
 int PLyObject_FromTransform ;
 int PLyString_FromScalar ;
 int RECORDOID ;
 int TYPECACHE_DOMAIN_BASE_INFO ;
 char TYPTYPE_COMPOSITE ;
 char TYPTYPE_DOMAIN ;
 int check_stack_depth () ;
 int fmgr_info_cxt (int,int *,int ) ;
 int getTypeOutputInfo (int,int*,int*) ;
 int get_transform_fromsql (int,int ,int ) ;
 TYPE_6__* lookup_type_cache (int,int ) ;

void
PLy_input_setup_func(PLyDatumToOb *arg, MemoryContext arg_mcxt,
      Oid typeOid, int32 typmod,
      PLyProcedure *proc)
{
 TypeCacheEntry *typentry;
 char typtype;
 Oid trfuncid;
 Oid typoutput;
 bool typisvarlena;


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

  PLy_input_setup_func(arg, arg_mcxt,
        typentry->domainBaseType,
        typentry->domainBaseTypmod,
        proc);
 }
 else if (typentry &&
    OidIsValid(typentry->typelem) && typentry->typlen == -1)
 {

  arg->func = PLyList_FromArray;

  arg->u.array.elm = (PLyDatumToOb *)
   MemoryContextAllocZero(arg_mcxt, sizeof(PLyDatumToOb));
  PLy_input_setup_func(arg->u.array.elm, arg_mcxt,
        typentry->typelem, typmod,
        proc);
 }
 else if ((trfuncid = get_transform_fromsql(typeOid,
              proc->langid,
              proc->trftypes)))
 {
  arg->func = PLyObject_FromTransform;
  fmgr_info_cxt(trfuncid, &arg->u.transform.typtransform, arg_mcxt);
 }
 else if (typtype == TYPTYPE_COMPOSITE)
 {

  arg->func = PLyDict_FromComposite;

  arg->u.tuple.recdesc = ((void*)0);
  arg->u.tuple.typentry = typentry;
  arg->u.tuple.tupdescid = INVALID_TUPLEDESC_IDENTIFIER;
  arg->u.tuple.atts = ((void*)0);
  arg->u.tuple.natts = 0;
 }
 else
 {

  switch (typeOid)
  {
   case 136:
    arg->func = PLyBool_FromBool;
    break;
   case 134:
    arg->func = PLyFloat_FromFloat4;
    break;
   case 133:
    arg->func = PLyFloat_FromFloat8;
    break;
   case 129:
    arg->func = PLyDecimal_FromNumeric;
    break;
   case 132:
    arg->func = PLyInt_FromInt16;
    break;
   case 131:
    arg->func = PLyInt_FromInt32;
    break;
   case 130:
    arg->func = PLyLong_FromInt64;
    break;
   case 128:
    arg->func = PLyLong_FromOid;
    break;
   case 135:
    arg->func = PLyBytes_FromBytea;
    break;
   default:
    arg->func = PLyString_FromScalar;
    getTypeOutputInfo(typeOid, &typoutput, &typisvarlena);
    fmgr_info_cxt(typoutput, &arg->u.scalar.typfunc, arg_mcxt);
    break;
  }
 }
}
