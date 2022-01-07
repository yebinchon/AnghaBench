
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nargs; int entryDatum; int entryIndex; } ;
struct TYPE_5__ {int type; struct TYPE_5__** args; TYPE_1__ val; } ;
typedef TYPE_2__ JsonPathGinNode ;
typedef int GinEntries ;





 int add_gin_entry (int *,int ) ;
 int check_stack_depth () ;

__attribute__((used)) static void
emit_jsp_gin_entries(JsonPathGinNode *node, GinEntries *entries)
{
 check_stack_depth();

 switch (node->type)
 {
  case 129:

   node->val.entryIndex = add_gin_entry(entries, node->val.entryDatum);
   break;

  case 128:
  case 130:
   {
    int i;

    for (i = 0; i < node->val.nargs; i++)
     emit_jsp_gin_entries(node->args[i], entries);

    break;
   }
 }
}
