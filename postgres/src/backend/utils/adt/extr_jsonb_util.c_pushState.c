
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ JsonbParseState ;


 TYPE_1__* palloc (int) ;

__attribute__((used)) static JsonbParseState *
pushState(JsonbParseState **pstate)
{
 JsonbParseState *ns = palloc(sizeof(JsonbParseState));

 ns->next = *pstate;
 return ns;
}
