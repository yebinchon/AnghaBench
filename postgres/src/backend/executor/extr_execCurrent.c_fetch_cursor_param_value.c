
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* ecxt_param_list_info; } ;
struct TYPE_9__ {scalar_t__ ptype; int value; int isnull; } ;
struct TYPE_8__ {int numParams; TYPE_2__* params; TYPE_2__* (* paramFetch ) (TYPE_1__*,int,int,TYPE_2__*) ;} ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ ParamExternData ;
typedef TYPE_3__ ExprContext ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ REFCURSOROID ;
 char* TextDatumGetCString (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,...) ;
 int format_type_be (scalar_t__) ;
 TYPE_2__* stub1 (TYPE_1__*,int,int,TYPE_2__*) ;

__attribute__((used)) static char *
fetch_cursor_param_value(ExprContext *econtext, int paramId)
{
 ParamListInfo paramInfo = econtext->ecxt_param_list_info;

 if (paramInfo &&
  paramId > 0 && paramId <= paramInfo->numParams)
 {
  ParamExternData *prm;
  ParamExternData prmdata;


  if (paramInfo->paramFetch != ((void*)0))
   prm = paramInfo->paramFetch(paramInfo, paramId, 0, &prmdata);
  else
   prm = &paramInfo->params[paramId - 1];

  if (OidIsValid(prm->ptype) && !prm->isnull)
  {

   if (prm->ptype != REFCURSOROID)
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("type of parameter %d (%s) does not match that when preparing the plan (%s)",
        paramId,
        format_type_be(prm->ptype),
        format_type_be(REFCURSOROID))));


   return TextDatumGetCString(prm->value);
  }
 }

 ereport(ERROR,
   (errcode(ERRCODE_UNDEFINED_OBJECT),
    errmsg("no value found for parameter %d", paramId)));
 return ((void*)0);
}
