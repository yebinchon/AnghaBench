
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* relname; void* schemaname; void* catalogname; } ;
typedef TYPE_1__ RangeVar ;
typedef int List ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int NameListToString (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int lsecond (int *) ;
 int lthird (int *) ;
 TYPE_1__* makeRangeVar (int *,int *,int) ;
 void* strVal (int ) ;

RangeVar *
makeRangeVarFromNameList(List *names)
{
 RangeVar *rel = makeRangeVar(((void*)0), ((void*)0), -1);

 switch (list_length(names))
 {
  case 1:
   rel->relname = strVal(linitial(names));
   break;
  case 2:
   rel->schemaname = strVal(linitial(names));
   rel->relname = strVal(lsecond(names));
   break;
  case 3:
   rel->catalogname = strVal(linitial(names));
   rel->schemaname = strVal(lsecond(names));
   rel->relname = strVal(lthird(names));
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("improper relation name (too many dotted names): %s",
       NameListToString(names))));
   break;
 }

 return rel;
}
