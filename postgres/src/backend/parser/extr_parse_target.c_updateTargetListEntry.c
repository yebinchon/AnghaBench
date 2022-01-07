
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* resname; scalar_t__ resno; int expr; } ;
typedef TYPE_1__ TargetEntry ;
typedef int ParseState ;
typedef int List ;
typedef scalar_t__ AttrNumber ;


 int EXPR_KIND_UPDATE_TARGET ;
 int transformAssignedExpr (int *,int ,int ,char*,int,int *,int) ;

void
updateTargetListEntry(ParseState *pstate,
       TargetEntry *tle,
       char *colname,
       int attrno,
       List *indirection,
       int location)
{

 tle->expr = transformAssignedExpr(pstate,
           tle->expr,
           EXPR_KIND_UPDATE_TARGET,
           colname,
           attrno,
           indirection,
           location);







 tle->resno = (AttrNumber) attrno;
 tle->resname = colname;
}
