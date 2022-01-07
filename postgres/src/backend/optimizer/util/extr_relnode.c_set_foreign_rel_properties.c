
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ serverid; scalar_t__ userid; int useridiscurrent; int fdwroutine; } ;
typedef TYPE_1__ RelOptInfo ;


 scalar_t__ GetUserId () ;
 scalar_t__ OidIsValid (scalar_t__) ;

__attribute__((used)) static void
set_foreign_rel_properties(RelOptInfo *joinrel, RelOptInfo *outer_rel,
         RelOptInfo *inner_rel)
{
 if (OidIsValid(outer_rel->serverid) &&
  inner_rel->serverid == outer_rel->serverid)
 {
  if (inner_rel->userid == outer_rel->userid)
  {
   joinrel->serverid = outer_rel->serverid;
   joinrel->userid = outer_rel->userid;
   joinrel->useridiscurrent = outer_rel->useridiscurrent || inner_rel->useridiscurrent;
   joinrel->fdwroutine = outer_rel->fdwroutine;
  }
  else if (!OidIsValid(inner_rel->userid) &&
     outer_rel->userid == GetUserId())
  {
   joinrel->serverid = outer_rel->serverid;
   joinrel->userid = outer_rel->userid;
   joinrel->useridiscurrent = 1;
   joinrel->fdwroutine = outer_rel->fdwroutine;
  }
  else if (!OidIsValid(outer_rel->userid) &&
     inner_rel->userid == GetUserId())
  {
   joinrel->serverid = outer_rel->serverid;
   joinrel->userid = inner_rel->userid;
   joinrel->useridiscurrent = 1;
   joinrel->fdwroutine = outer_rel->fdwroutine;
  }
 }
}
