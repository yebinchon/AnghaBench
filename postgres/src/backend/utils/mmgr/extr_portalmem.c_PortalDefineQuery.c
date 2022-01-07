
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; char const* prepStmtName; char const* sourceText; char const* commandTag; int * cplan; int * stmts; } ;
typedef TYPE_1__* Portal ;
typedef int List ;
typedef int CachedPlan ;


 int AssertArg (int) ;
 int AssertState (int) ;
 int * NIL ;
 scalar_t__ PORTAL_DEFINED ;
 scalar_t__ PORTAL_NEW ;
 int PortalIsValid (TYPE_1__*) ;

void
PortalDefineQuery(Portal portal,
      const char *prepStmtName,
      const char *sourceText,
      const char *commandTag,
      List *stmts,
      CachedPlan *cplan)
{
 AssertArg(PortalIsValid(portal));
 AssertState(portal->status == PORTAL_NEW);

 AssertArg(sourceText != ((void*)0));
 AssertArg(commandTag != ((void*)0) || stmts == NIL);

 portal->prepStmtName = prepStmtName;
 portal->sourceText = sourceText;
 portal->commandTag = commandTag;
 portal->stmts = stmts;
 portal->cplan = cplan;
 portal->status = PORTAL_DEFINED;
}
