
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int location; } ;
struct TYPE_8__ {int location; int fields; } ;
struct TYPE_7__ {int p_ref_hook_state; } ;
typedef TYPE_1__ ParseState ;
typedef int Node ;
typedef TYPE_2__ ColumnRef ;
typedef TYPE_3__ CoerceToDomainValue ;


 int Assert (int ) ;
 int IsA (int *,int ) ;
 int String ;
 TYPE_3__* copyObject (int ) ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;
 char* strVal (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static Node *
replace_domain_constraint_value(ParseState *pstate, ColumnRef *cref)
{






 if (list_length(cref->fields) == 1)
 {
  Node *field1 = (Node *) linitial(cref->fields);
  char *colname;

  Assert(IsA(field1, String));
  colname = strVal(field1);
  if (strcmp(colname, "value") == 0)
  {
   CoerceToDomainValue *domVal = copyObject(pstate->p_ref_hook_state);


   domVal->location = cref->location;
   return (Node *) domVal;
  }
 }
 return ((void*)0);
}
