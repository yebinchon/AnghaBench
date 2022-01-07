
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_expr_kind; int p_hasTargetSRFs; int * p_last_srf; } ;
typedef TYPE_1__ ParseState ;
typedef int Node ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ParseExprKindName (int) ;
 char* _ (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int errmsg_internal (char*,char const*) ;
 int exprLocation (int *) ;
 int parser_errposition (TYPE_1__*,int) ;

void
check_srf_call_placement(ParseState *pstate, Node *last_srf, int location)
{
 const char *err;
 bool errkind;
 err = ((void*)0);
 errkind = 0;
 switch (pstate->p_expr_kind)
 {
  case 147:
   Assert(0);
   break;
  case 144:

   break;
  case 150:
  case 149:
   err = _("set-returning functions are not allowed in JOIN conditions");
   break;
  case 158:

   errkind = 1;
   break;
  case 159:



   if (pstate->p_last_srf != last_srf)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("set-returning functions must appear at top level of FROM"),
       parser_errposition(pstate,
           exprLocation(pstate->p_last_srf))));
   break;
  case 133:
   errkind = 1;
   break;
  case 141:
   err = _("set-returning functions are not allowed in policy expressions");
   break;
  case 154:
   errkind = 1;
   break;
  case 160:
   errkind = 1;
   break;
  case 128:
  case 129:

   pstate->p_hasTargetSRFs = 1;
   break;
  case 131:
  case 130:
  case 132:
   err = _("set-returning functions are not allowed in window definitions");
   break;
  case 139:
  case 151:

   pstate->p_hasTargetSRFs = 1;
   break;
  case 137:
  case 136:

   errkind = 1;
   break;
  case 155:
  case 145:

   pstate->p_hasTargetSRFs = 1;
   break;
  case 163:

   pstate->p_hasTargetSRFs = 1;
   break;
  case 148:
  case 146:
   errkind = 1;
   break;
  case 140:
   errkind = 1;
   break;
  case 135:

   errkind = 1;
   break;
  case 134:

   pstate->p_hasTargetSRFs = 1;
   break;
  case 166:
  case 162:
   err = _("set-returning functions are not allowed in check constraints");
   break;
  case 165:
  case 157:
   err = _("set-returning functions are not allowed in DEFAULT expressions");
   break;
  case 153:
   err = _("set-returning functions are not allowed in index expressions");
   break;
  case 152:
   err = _("set-returning functions are not allowed in index predicates");
   break;
  case 168:
   err = _("set-returning functions are not allowed in transform expressions");
   break;
  case 161:
   err = _("set-returning functions are not allowed in EXECUTE parameters");
   break;
  case 138:
   err = _("set-returning functions are not allowed in trigger WHEN conditions");
   break;
  case 143:
   err = _("set-returning functions are not allowed in partition bound");
   break;
  case 142:
   err = _("set-returning functions are not allowed in partition key expressions");
   break;
  case 167:
   err = _("set-returning functions are not allowed in CALL arguments");
   break;
  case 164:
   err = _("set-returning functions are not allowed in COPY FROM WHERE conditions");
   break;
  case 156:
   err = _("set-returning functions are not allowed in column generation expressions");
   break;
 }
 if (err)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg_internal("%s", err),
     parser_errposition(pstate, location)));
 if (errkind)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),

     errmsg("set-returning functions are not allowed in %s",
      ParseExprKindName(pstate->p_expr_kind)),
     parser_errposition(pstate, location)));
}
