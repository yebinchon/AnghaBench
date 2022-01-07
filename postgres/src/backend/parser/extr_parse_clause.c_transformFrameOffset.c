
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amprocnum; scalar_t__ amprocrighttype; scalar_t__ amproc; } ;
struct TYPE_6__ {int tuple; } ;
typedef int ParseState ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_amproc ;
typedef TYPE_3__ CatCList ;


 int AMPROCNUM ;
 int Assert (int) ;
 scalar_t__ BTINRANGE_PROC ;
 int COERCION_IMPLICIT ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int EXPR_KIND_WINDOW_FRAME_GROUPS ;
 int EXPR_KIND_WINDOW_FRAME_RANGE ;
 int EXPR_KIND_WINDOW_FRAME_ROWS ;
 int FRAMEOPTION_GROUPS ;
 int FRAMEOPTION_RANGE ;
 int FRAMEOPTION_ROWS ;
 int GETSTRUCT (int *) ;
 scalar_t__ INT8OID ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseCatCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList2 (int ,int ,int ) ;
 scalar_t__ UNKNOWNOID ;
 int can_coerce_type (int,scalar_t__*,scalar_t__*,int ) ;
 int checkExprIsVarFree (int *,int *,char const*) ;
 int * coerce_to_specific_type (int *,int *,scalar_t__,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,...) ;
 int exprLocation (int *) ;
 scalar_t__ exprType (int *) ;
 int format_type_be (scalar_t__) ;
 int parser_errposition (int *,int ) ;
 int * transformExpr (int *,int *,int ) ;

__attribute__((used)) static Node *
transformFrameOffset(ParseState *pstate, int frameOptions,
      Oid rangeopfamily, Oid rangeopcintype, Oid *inRangeFunc,
      Node *clause)
{
 const char *constructName = ((void*)0);
 Node *node;

 *inRangeFunc = InvalidOid;


 if (clause == ((void*)0))
  return ((void*)0);

 if (frameOptions & FRAMEOPTION_ROWS)
 {

  node = transformExpr(pstate, clause, EXPR_KIND_WINDOW_FRAME_ROWS);




  constructName = "ROWS";
  node = coerce_to_specific_type(pstate, node, INT8OID, constructName);
 }
 else if (frameOptions & FRAMEOPTION_RANGE)
 {





  Oid nodeType;
  Oid preferredType;
  int nfuncs = 0;
  int nmatches = 0;
  Oid selectedType = InvalidOid;
  Oid selectedFunc = InvalidOid;
  CatCList *proclist;
  int i;


  node = transformExpr(pstate, clause, EXPR_KIND_WINDOW_FRAME_RANGE);
  nodeType = exprType(node);







  preferredType = (nodeType != UNKNOWNOID) ? nodeType : rangeopcintype;


  proclist = SearchSysCacheList2(AMPROCNUM,
            ObjectIdGetDatum(rangeopfamily),
            ObjectIdGetDatum(rangeopcintype));
  for (i = 0; i < proclist->n_members; i++)
  {
   HeapTuple proctup = &proclist->members[i]->tuple;
   Form_pg_amproc procform = (Form_pg_amproc) GETSTRUCT(proctup);


   if (procform->amprocnum != BTINRANGE_PROC)
    continue;
   nfuncs++;


   if (!can_coerce_type(1, &nodeType, &procform->amprocrighttype,
         COERCION_IMPLICIT))
    continue;
   nmatches++;


   if (selectedType != preferredType)
   {
    selectedType = procform->amprocrighttype;
    selectedFunc = procform->amproc;
   }
  }
  ReleaseCatCacheList(proclist);






  if (nfuncs == 0)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("RANGE with offset PRECEDING/FOLLOWING is not supported for column type %s",
       format_type_be(rangeopcintype)),
      parser_errposition(pstate, exprLocation(node))));
  if (nmatches == 0)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("RANGE with offset PRECEDING/FOLLOWING is not supported for column type %s and offset type %s",
       format_type_be(rangeopcintype),
       format_type_be(nodeType)),
      errhint("Cast the offset value to an appropriate type."),
      parser_errposition(pstate, exprLocation(node))));
  if (nmatches != 1 && selectedType != preferredType)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("RANGE with offset PRECEDING/FOLLOWING has multiple interpretations for column type %s and offset type %s",
       format_type_be(rangeopcintype),
       format_type_be(nodeType)),
      errhint("Cast the offset value to the exact intended type."),
      parser_errposition(pstate, exprLocation(node))));


  constructName = "RANGE";
  node = coerce_to_specific_type(pstate, node,
            selectedType, constructName);
  *inRangeFunc = selectedFunc;
 }
 else if (frameOptions & FRAMEOPTION_GROUPS)
 {

  node = transformExpr(pstate, clause, EXPR_KIND_WINDOW_FRAME_GROUPS);




  constructName = "GROUPS";
  node = coerce_to_specific_type(pstate, node, INT8OID, constructName);
 }
 else
 {
  Assert(0);
  node = ((void*)0);
 }


 checkExprIsVarFree(pstate, node, constructName);

 return node;
}
