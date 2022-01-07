
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sourceText; } ;
typedef TYPE_1__ QueryDesc ;
typedef int ExplainState ;


 int ExplainPropertyText (char*,scalar_t__,int *) ;

void
ExplainQueryText(ExplainState *es, QueryDesc *queryDesc)
{
 if (queryDesc->sourceText)
  ExplainPropertyText("Query Text", queryDesc->sourceText, es);
}
