
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; void* grouping_stack; int indent; int str; } ;
typedef TYPE_1__ ExplainState ;






 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 void* lcons_int (int ,void*) ;

void
ExplainBeginOutput(ExplainState *es)
{
 switch (es->format)
 {
  case 130:

   break;

  case 129:
   appendStringInfoString(es->str,
           "<explain xmlns=\"http://www.postgresql.org/2009/explain\">\n");
   es->indent++;
   break;

  case 131:

   appendStringInfoChar(es->str, '[');
   es->grouping_stack = lcons_int(0, es->grouping_stack);
   es->indent++;
   break;

  case 128:
   es->grouping_stack = lcons_int(0, es->grouping_stack);
   break;
 }
}
