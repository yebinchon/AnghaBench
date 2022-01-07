
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int location; int defname; int arg; } ;
typedef int ParseState ;
typedef int List ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * lappend (int *,int ) ;
 int parser_errposition (int *,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool
compute_common_attribute(ParseState *pstate,
       bool is_procedure,
       DefElem *defel,
       DefElem **volatility_item,
       DefElem **strict_item,
       DefElem **security_item,
       DefElem **leakproof_item,
       List **set_items,
       DefElem **cost_item,
       DefElem **rows_item,
       DefElem **support_item,
       DefElem **parallel_item)
{
 if (strcmp(defel->defname, "volatility") == 0)
 {
  if (is_procedure)
   goto procedure_error;
  if (*volatility_item)
   goto duplicate_error;

  *volatility_item = defel;
 }
 else if (strcmp(defel->defname, "strict") == 0)
 {
  if (is_procedure)
   goto procedure_error;
  if (*strict_item)
   goto duplicate_error;

  *strict_item = defel;
 }
 else if (strcmp(defel->defname, "security") == 0)
 {
  if (*security_item)
   goto duplicate_error;

  *security_item = defel;
 }
 else if (strcmp(defel->defname, "leakproof") == 0)
 {
  if (is_procedure)
   goto procedure_error;
  if (*leakproof_item)
   goto duplicate_error;

  *leakproof_item = defel;
 }
 else if (strcmp(defel->defname, "set") == 0)
 {
  *set_items = lappend(*set_items, defel->arg);
 }
 else if (strcmp(defel->defname, "cost") == 0)
 {
  if (is_procedure)
   goto procedure_error;
  if (*cost_item)
   goto duplicate_error;

  *cost_item = defel;
 }
 else if (strcmp(defel->defname, "rows") == 0)
 {
  if (is_procedure)
   goto procedure_error;
  if (*rows_item)
   goto duplicate_error;

  *rows_item = defel;
 }
 else if (strcmp(defel->defname, "support") == 0)
 {
  if (is_procedure)
   goto procedure_error;
  if (*support_item)
   goto duplicate_error;

  *support_item = defel;
 }
 else if (strcmp(defel->defname, "parallel") == 0)
 {
  if (is_procedure)
   goto procedure_error;
  if (*parallel_item)
   goto duplicate_error;

  *parallel_item = defel;
 }
 else
  return 0;


 return 1;

duplicate_error:
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    errmsg("conflicting or redundant options"),
    parser_errposition(pstate, defel->location)));
 return 0;

procedure_error:
 ereport(ERROR,
   (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
    errmsg("invalid attribute in procedure definition"),
    parser_errposition(pstate, defel->location)));
 return 0;
}
