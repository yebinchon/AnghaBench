
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


typedef int int32 ;
struct TYPE_25__ {int dtype; } ;
struct TYPE_24__ {int ndatums; TYPE_9__** datums; } ;
struct TYPE_23__ {int rwparam; int paramnos; } ;
struct TYPE_22__ {TYPE_13__* erh; } ;
struct TYPE_21__ {size_t recparentno; int rectupledescid; int finfo; int fieldname; } ;
struct TYPE_20__ {TYPE_1__* datatype; } ;
struct TYPE_19__ {int isnull; void* value; scalar_t__ pflags; int ptype; } ;
struct TYPE_18__ {int numParams; scalar_t__ parserSetupArg; scalar_t__ paramFetchArg; } ;
struct TYPE_17__ {int typlen; } ;
struct TYPE_16__ {int er_tupdesc_id; } ;
typedef TYPE_2__* ParamListInfo ;
typedef TYPE_3__ ParamExternData ;
typedef TYPE_4__ PLpgSQL_var ;
typedef TYPE_5__ PLpgSQL_recfield ;
typedef TYPE_6__ PLpgSQL_rec ;
typedef TYPE_7__ PLpgSQL_expr ;
typedef TYPE_8__ PLpgSQL_execstate ;
typedef TYPE_9__ PLpgSQL_datum ;
typedef void* Datum ;


 int Assert (int) ;
 int InvalidOid ;
 void* MakeExpandedObjectReadOnly (void*,int,int) ;
 scalar_t__ PARAM_FLAG_CONST ;





 int bms_is_member (int,int ) ;
 int exec_eval_datum (TYPE_8__*,TYPE_9__*,int *,int *,void**,int*) ;
 int expanded_record_lookup_field (TYPE_13__*,int ,int *) ;
 int unlikely (int) ;

__attribute__((used)) static ParamExternData *
plpgsql_param_fetch(ParamListInfo params,
     int paramid, bool speculative,
     ParamExternData *prm)
{
 int dno;
 PLpgSQL_execstate *estate;
 PLpgSQL_expr *expr;
 PLpgSQL_datum *datum;
 bool ok = 1;
 int32 prmtypmod;


 dno = paramid - 1;
 Assert(dno >= 0 && dno < params->numParams);


 estate = (PLpgSQL_execstate *) params->paramFetchArg;
 expr = (PLpgSQL_expr *) params->parserSetupArg;
 Assert(params->numParams == estate->ndatums);


 datum = estate->datums[dno];
 if (!bms_is_member(dno, expr->paramnos))
  ok = 0;





 else if (speculative)
 {
  switch (datum->dtype)
  {
   case 128:
   case 132:

    break;

   case 129:

    break;

   case 131:

    break;

   case 130:
    {
     PLpgSQL_recfield *recfield = (PLpgSQL_recfield *) datum;
     PLpgSQL_rec *rec;

     rec = (PLpgSQL_rec *) (estate->datums[recfield->recparentno]);




     if (rec->erh == ((void*)0))
      ok = 0;





     else if (unlikely(recfield->rectupledescid != rec->erh->er_tupdesc_id))
     {
      if (expanded_record_lookup_field(rec->erh,
               recfield->fieldname,
               &recfield->finfo))
       recfield->rectupledescid = rec->erh->er_tupdesc_id;
      else
       ok = 0;
     }
     break;
    }

   default:
    ok = 0;
    break;
  }
 }


 if (!ok)
 {
  prm->value = (Datum) 0;
  prm->isnull = 1;
  prm->pflags = 0;
  prm->ptype = InvalidOid;
  return prm;
 }


 exec_eval_datum(estate, datum,
     &prm->ptype, &prmtypmod,
     &prm->value, &prm->isnull);

 prm->pflags = PARAM_FLAG_CONST;





 if (dno != expr->rwparam)
 {
  if (datum->dtype == 128)
   prm->value = MakeExpandedObjectReadOnly(prm->value,
             prm->isnull,
             ((PLpgSQL_var *) datum)->datatype->typlen);
  else if (datum->dtype == 131)
   prm->value = MakeExpandedObjectReadOnly(prm->value,
             prm->isnull,
             -1);
 }

 return prm;
}
