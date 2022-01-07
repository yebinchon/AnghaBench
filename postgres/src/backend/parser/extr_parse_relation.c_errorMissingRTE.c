
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* eref; scalar_t__ alias; } ;
struct TYPE_9__ {int location; int relname; } ;
struct TYPE_8__ {char* aliasname; } ;
typedef TYPE_2__ RangeVar ;
typedef TYPE_3__ RangeTblEntry ;
typedef int ParseState ;


 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,char const*) ;
 int errmsg (char*,int ) ;
 int parser_errposition (int *,int ) ;
 TYPE_3__* refnameRangeTblEntry (int *,int *,char*,int ,int*) ;
 TYPE_3__* searchRangeTableForRel (int *,TYPE_2__*) ;
 scalar_t__ strcmp (char*,int ) ;

void
errorMissingRTE(ParseState *pstate, RangeVar *relation)
{
 RangeTblEntry *rte;
 int sublevels_up;
 const char *badAlias = ((void*)0);






 rte = searchRangeTableForRel(pstate, relation);
 if (rte && rte->alias &&
  strcmp(rte->eref->aliasname, relation->relname) != 0 &&
  refnameRangeTblEntry(pstate, ((void*)0), rte->eref->aliasname,
        relation->location,
        &sublevels_up) == rte)
  badAlias = rte->eref->aliasname;

 if (rte)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("invalid reference to FROM-clause entry for table \"%s\"",
      relation->relname),
     (badAlias ?
      errhint("Perhaps you meant to reference the table alias \"%s\".",
        badAlias) :
      errhint("There is an entry for table \"%s\", but it cannot be referenced from this part of the query.",
        rte->eref->aliasname)),
     parser_errposition(pstate, relation->location)));
 else
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("missing FROM-clause entry for table \"%s\"",
      relation->relname),
     parser_errposition(pstate, relation->location)));
}
