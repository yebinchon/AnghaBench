
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* tg_trigger; } ;
typedef TYPE_4__ TriggerData ;
struct TYPE_14__ {int values; } ;
struct TYPE_19__ {int pronargs; int proname; TYPE_2__ proargtypes; } ;
struct TYPE_18__ {TYPE_3__* flinfo; int fncollation; scalar_t__ context; } ;
struct TYPE_17__ {int argtypes; int inputCollation; int trigOid; scalar_t__ isTrigger; int funcOid; } ;
struct TYPE_15__ {int fn_expr; int fn_oid; } ;
struct TYPE_13__ {int tgoid; } ;
typedef TYPE_5__ PLpgSQL_func_hashkey ;
typedef int Oid ;
typedef TYPE_6__* FunctionCallInfo ;
typedef TYPE_7__* Form_pg_proc ;


 scalar_t__ CALLED_AS_TRIGGER (TYPE_6__*) ;
 int MemSet (TYPE_5__*,int ,int) ;
 int NameStr (int ) ;
 int memcpy (int ,int ,int) ;
 int plpgsql_resolve_polymorphic_argtypes (int,int ,int *,int ,int,int ) ;

__attribute__((used)) static void
compute_function_hashkey(FunctionCallInfo fcinfo,
       Form_pg_proc procStruct,
       PLpgSQL_func_hashkey *hashkey,
       bool forValidator)
{

 MemSet(hashkey, 0, sizeof(PLpgSQL_func_hashkey));


 hashkey->funcOid = fcinfo->flinfo->fn_oid;


 hashkey->isTrigger = CALLED_AS_TRIGGER(fcinfo);







 if (hashkey->isTrigger && !forValidator)
 {
  TriggerData *trigdata = (TriggerData *) fcinfo->context;

  hashkey->trigOid = trigdata->tg_trigger->tgoid;
 }


 hashkey->inputCollation = fcinfo->fncollation;

 if (procStruct->pronargs > 0)
 {

  memcpy(hashkey->argtypes, procStruct->proargtypes.values,
      procStruct->pronargs * sizeof(Oid));


  plpgsql_resolve_polymorphic_argtypes(procStruct->pronargs,
            hashkey->argtypes,
            ((void*)0),
            fcinfo->flinfo->fn_expr,
            forValidator,
            NameStr(procStruct->proname));
 }
}
