
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int location; int * fields; } ;
struct TYPE_15__ {int * (* p_post_columnref_hook ) (TYPE_1__*,TYPE_2__*,int *) ;int * (* p_pre_columnref_hook ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef int RangeTblEntry ;
typedef TYPE_1__ ParseState ;
typedef int Node ;
typedef int List ;
typedef TYPE_2__ ColumnRef ;


 int Assert (int) ;
 int ERRCODE_AMBIGUOUS_COLUMN ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int * ExpandAllTables (TYPE_1__*,int ) ;
 int * ExpandRowReference (TYPE_1__*,int *,int) ;
 int * ExpandSingleTable (TYPE_1__*,int *,int ,int) ;
 int MyDatabaseId ;
 int NameListToString (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int errorMissingRTE (TYPE_1__*,int ) ;
 int get_database_name (int ) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int lsecond (int *) ;
 int lthird (int *) ;
 int makeRangeVar (char*,char*,int ) ;
 int parser_errposition (TYPE_1__*,int ) ;
 int * refnameRangeTblEntry (TYPE_1__*,char*,char*,int ,int*) ;
 char* strVal (int ) ;
 int strcmp (char*,int ) ;
 int * stub1 (TYPE_1__*,TYPE_2__*) ;
 int * stub2 (TYPE_1__*,TYPE_2__*,int *) ;

__attribute__((used)) static List *
ExpandColumnRefStar(ParseState *pstate, ColumnRef *cref,
     bool make_target_entry)
{
 List *fields = cref->fields;
 int numnames = list_length(fields);

 if (numnames == 1)
 {
  Assert(make_target_entry);
  return ExpandAllTables(pstate, cref->location);
 }
 else
 {
  char *nspname = ((void*)0);
  char *relname = ((void*)0);
  RangeTblEntry *rte = ((void*)0);
  int levels_up;
  enum
  {
   CRSERR_NO_RTE,
   CRSERR_WRONG_DB,
   CRSERR_TOO_MANY
  } crserr = CRSERR_NO_RTE;





  if (pstate->p_pre_columnref_hook != ((void*)0))
  {
   Node *node;

   node = pstate->p_pre_columnref_hook(pstate, cref);
   if (node != ((void*)0))
    return ExpandRowReference(pstate, node, make_target_entry);
  }

  switch (numnames)
  {
   case 2:
    relname = strVal(linitial(fields));
    rte = refnameRangeTblEntry(pstate, nspname, relname,
             cref->location,
             &levels_up);
    break;
   case 3:
    nspname = strVal(linitial(fields));
    relname = strVal(lsecond(fields));
    rte = refnameRangeTblEntry(pstate, nspname, relname,
             cref->location,
             &levels_up);
    break;
   case 4:
    {
     char *catname = strVal(linitial(fields));




     if (strcmp(catname, get_database_name(MyDatabaseId)) != 0)
     {
      crserr = CRSERR_WRONG_DB;
      break;
     }
     nspname = strVal(lsecond(fields));
     relname = strVal(lthird(fields));
     rte = refnameRangeTblEntry(pstate, nspname, relname,
              cref->location,
              &levels_up);
     break;
    }
   default:
    crserr = CRSERR_TOO_MANY;
    break;
  }
  if (pstate->p_post_columnref_hook != ((void*)0))
  {
   Node *node;

   node = pstate->p_post_columnref_hook(pstate, cref,
             (Node *) rte);
   if (node != ((void*)0))
   {
    if (rte != ((void*)0))
     ereport(ERROR,
       (errcode(ERRCODE_AMBIGUOUS_COLUMN),
        errmsg("column reference \"%s\" is ambiguous",
         NameListToString(cref->fields)),
        parser_errposition(pstate, cref->location)));
    return ExpandRowReference(pstate, node, make_target_entry);
   }
  }




  if (rte == ((void*)0))
  {
   switch (crserr)
   {
    case CRSERR_NO_RTE:
     errorMissingRTE(pstate, makeRangeVar(nspname, relname,
               cref->location));
     break;
    case CRSERR_WRONG_DB:
     ereport(ERROR,
       (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
        errmsg("cross-database references are not implemented: %s",
         NameListToString(cref->fields)),
        parser_errposition(pstate, cref->location)));
     break;
    case CRSERR_TOO_MANY:
     ereport(ERROR,
       (errcode(ERRCODE_SYNTAX_ERROR),
        errmsg("improper qualified name (too many dotted names): %s",
         NameListToString(cref->fields)),
        parser_errposition(pstate, cref->location)));
     break;
   }
  }




  return ExpandSingleTable(pstate, rte, cref->location, make_target_entry);
 }
}
