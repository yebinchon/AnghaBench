
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* p_rte; int p_lateral_ok; scalar_t__ p_lateral_only; } ;
struct TYPE_10__ {TYPE_2__* p_target_rangetblentry; } ;
struct TYPE_9__ {TYPE_1__* eref; } ;
struct TYPE_8__ {char* aliasname; } ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ ParseState ;
typedef TYPE_4__ ParseNamespaceItem ;


 int ERRCODE_INVALID_COLUMN_REFERENCE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*,char*) ;
 int errmsg (char*,char*) ;
 int parser_errposition (TYPE_3__*,int) ;

__attribute__((used)) static void
check_lateral_ref_ok(ParseState *pstate, ParseNamespaceItem *nsitem,
      int location)
{
 if (nsitem->p_lateral_only && !nsitem->p_lateral_ok)
 {

  RangeTblEntry *rte = nsitem->p_rte;
  char *refname = rte->eref->aliasname;

  ereport(ERROR,
    (errcode(ERRCODE_INVALID_COLUMN_REFERENCE),
     errmsg("invalid reference to FROM-clause entry for table \"%s\"",
      refname),
     (rte == pstate->p_target_rangetblentry) ?
     errhint("There is an entry for table \"%s\", but it cannot be referenced from this part of the query.",
       refname) :
     errdetail("The combining JOIN type must be INNER or LEFT for a LATERAL reference."),
     parser_errposition(pstate, location)));
 }
}
