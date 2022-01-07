
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int location; int fields; } ;
struct TYPE_17__ {int p_expr_kind; int * (* p_post_columnref_hook ) (TYPE_1__*,TYPE_2__*,int *) ;int p_last_srf; int * (* p_pre_columnref_hook ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef int RangeTblEntry ;
typedef TYPE_1__ ParseState ;
typedef int Node ;
typedef TYPE_2__ ColumnRef ;


 int A_Star ;
 int Assert (int) ;
 int ERRCODE_AMBIGUOUS_COLUMN ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int IsA (int *,int ) ;
 int MyDatabaseId ;
 int NameListToString (int ) ;
 int * ParseFuncOrColumn (TYPE_1__*,int ,int ,int ,int *,int,int ) ;
 int String ;
 char* _ (char*) ;
 int * colNameToVar (TYPE_1__*,char*,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int errmsg_internal (char*,char const*) ;
 int errorMissingColumn (TYPE_1__*,char*,char*,int ) ;
 int errorMissingRTE (TYPE_1__*,int ) ;
 int get_database_name (int ) ;
 scalar_t__ lfourth (int ) ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;
 int list_make1 (int *) ;
 scalar_t__ lsecond (int ) ;
 scalar_t__ lthird (int ) ;
 int makeRangeVar (char*,char*,int ) ;
 int * makeString (char*) ;
 int parser_errposition (TYPE_1__*,int ) ;
 int * refnameRangeTblEntry (TYPE_1__*,char*,char*,int ,int*) ;
 int * scanRTEForColumn (TYPE_1__*,int *,char*,int ,int ,int *) ;
 char* strVal (int *) ;
 int strcmp (char*,int ) ;
 int * stub1 (TYPE_1__*,TYPE_2__*) ;
 int * stub2 (TYPE_1__*,TYPE_2__*,int *) ;
 int * transformWholeRowRef (TYPE_1__*,int *,int ) ;

__attribute__((used)) static Node *
transformColumnRef(ParseState *pstate, ColumnRef *cref)
{
 Node *node = ((void*)0);
 char *nspname = ((void*)0);
 char *relname = ((void*)0);
 char *colname = ((void*)0);
 RangeTblEntry *rte;
 int levels_up;
 enum
 {
  CRERR_NO_COLUMN,
  CRERR_NO_RTE,
  CRERR_WRONG_DB,
  CRERR_TOO_MANY
 } crerr = CRERR_NO_COLUMN;
 const char *err;






 err = ((void*)0);
 switch (pstate->p_expr_kind)
 {
  case 147:
   Assert(0);
   break;
  case 144:
  case 150:
  case 149:
  case 158:
  case 159:
  case 133:
  case 141:
  case 154:
  case 160:
  case 128:
  case 129:
  case 131:
  case 130:
  case 132:
  case 139:
  case 151:
  case 137:
  case 136:
  case 155:
  case 145:
  case 163:
  case 148:
  case 146:
  case 140:
  case 135:
  case 134:
  case 166:
  case 162:
  case 157:
  case 153:
  case 152:
  case 168:
  case 161:
  case 138:
  case 142:
  case 167:
  case 164:
  case 156:

   break;

  case 165:
   err = _("cannot use column reference in DEFAULT expression");
   break;
  case 143:
   err = _("cannot use column reference in partition bound expression");
   break;
 }
 if (err)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg_internal("%s", err),
     parser_errposition(pstate, cref->location)));





 if (pstate->p_pre_columnref_hook != ((void*)0))
 {
  node = pstate->p_pre_columnref_hook(pstate, cref);
  if (node != ((void*)0))
   return node;
 }
 switch (list_length(cref->fields))
 {
  case 1:
   {
    Node *field1 = (Node *) linitial(cref->fields);

    Assert(IsA(field1, String));
    colname = strVal(field1);


    node = colNameToVar(pstate, colname, 0, cref->location);

    if (node == ((void*)0))
    {
     rte = refnameRangeTblEntry(pstate, ((void*)0), colname,
              cref->location,
              &levels_up);
     if (rte)
      node = transformWholeRowRef(pstate, rte,
             cref->location);
    }
    break;
   }
  case 2:
   {
    Node *field1 = (Node *) linitial(cref->fields);
    Node *field2 = (Node *) lsecond(cref->fields);

    Assert(IsA(field1, String));
    relname = strVal(field1);


    rte = refnameRangeTblEntry(pstate, nspname, relname,
             cref->location,
             &levels_up);
    if (rte == ((void*)0))
    {
     crerr = CRERR_NO_RTE;
     break;
    }


    if (IsA(field2, A_Star))
    {
     node = transformWholeRowRef(pstate, rte, cref->location);
     break;
    }

    Assert(IsA(field2, String));
    colname = strVal(field2);


    node = scanRTEForColumn(pstate, rte, colname, cref->location,
          0, ((void*)0));
    if (node == ((void*)0))
    {

     node = transformWholeRowRef(pstate, rte, cref->location);
     node = ParseFuncOrColumn(pstate,
            list_make1(makeString(colname)),
            list_make1(node),
            pstate->p_last_srf,
            ((void*)0),
            0,
            cref->location);
    }
    break;
   }
  case 3:
   {
    Node *field1 = (Node *) linitial(cref->fields);
    Node *field2 = (Node *) lsecond(cref->fields);
    Node *field3 = (Node *) lthird(cref->fields);

    Assert(IsA(field1, String));
    nspname = strVal(field1);
    Assert(IsA(field2, String));
    relname = strVal(field2);


    rte = refnameRangeTblEntry(pstate, nspname, relname,
             cref->location,
             &levels_up);
    if (rte == ((void*)0))
    {
     crerr = CRERR_NO_RTE;
     break;
    }


    if (IsA(field3, A_Star))
    {
     node = transformWholeRowRef(pstate, rte, cref->location);
     break;
    }

    Assert(IsA(field3, String));
    colname = strVal(field3);


    node = scanRTEForColumn(pstate, rte, colname, cref->location,
          0, ((void*)0));
    if (node == ((void*)0))
    {

     node = transformWholeRowRef(pstate, rte, cref->location);
     node = ParseFuncOrColumn(pstate,
            list_make1(makeString(colname)),
            list_make1(node),
            pstate->p_last_srf,
            ((void*)0),
            0,
            cref->location);
    }
    break;
   }
  case 4:
   {
    Node *field1 = (Node *) linitial(cref->fields);
    Node *field2 = (Node *) lsecond(cref->fields);
    Node *field3 = (Node *) lthird(cref->fields);
    Node *field4 = (Node *) lfourth(cref->fields);
    char *catname;

    Assert(IsA(field1, String));
    catname = strVal(field1);
    Assert(IsA(field2, String));
    nspname = strVal(field2);
    Assert(IsA(field3, String));
    relname = strVal(field3);




    if (strcmp(catname, get_database_name(MyDatabaseId)) != 0)
    {
     crerr = CRERR_WRONG_DB;
     break;
    }


    rte = refnameRangeTblEntry(pstate, nspname, relname,
             cref->location,
             &levels_up);
    if (rte == ((void*)0))
    {
     crerr = CRERR_NO_RTE;
     break;
    }


    if (IsA(field4, A_Star))
    {
     node = transformWholeRowRef(pstate, rte, cref->location);
     break;
    }

    Assert(IsA(field4, String));
    colname = strVal(field4);


    node = scanRTEForColumn(pstate, rte, colname, cref->location,
          0, ((void*)0));
    if (node == ((void*)0))
    {

     node = transformWholeRowRef(pstate, rte, cref->location);
     node = ParseFuncOrColumn(pstate,
            list_make1(makeString(colname)),
            list_make1(node),
            pstate->p_last_srf,
            ((void*)0),
            0,
            cref->location);
    }
    break;
   }
  default:
   crerr = CRERR_TOO_MANY;
   break;
 }
 if (pstate->p_post_columnref_hook != ((void*)0))
 {
  Node *hookresult;

  hookresult = pstate->p_post_columnref_hook(pstate, cref, node);
  if (node == ((void*)0))
   node = hookresult;
  else if (hookresult != ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_AMBIGUOUS_COLUMN),
      errmsg("column reference \"%s\" is ambiguous",
       NameListToString(cref->fields)),
      parser_errposition(pstate, cref->location)));
 }




 if (node == ((void*)0))
 {
  switch (crerr)
  {
   case CRERR_NO_COLUMN:
    errorMissingColumn(pstate, relname, colname, cref->location);
    break;
   case CRERR_NO_RTE:
    errorMissingRTE(pstate, makeRangeVar(nspname, relname,
              cref->location));
    break;
   case CRERR_WRONG_DB:
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cross-database references are not implemented: %s",
        NameListToString(cref->fields)),
       parser_errposition(pstate, cref->location)));
    break;
   case CRERR_TOO_MANY:
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("improper qualified name (too many dotted names): %s",
        NameListToString(cref->fields)),
       parser_errposition(pstate, cref->location)));
    break;
  }
 }

 return node;
}
