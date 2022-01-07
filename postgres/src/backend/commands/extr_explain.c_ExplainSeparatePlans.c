
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; int str; } ;
typedef TYPE_1__ ExplainState ;






 int appendStringInfoChar (int ,char) ;

void
ExplainSeparatePlans(ExplainState *es)
{
 switch (es->format)
 {
  case 130:

   appendStringInfoChar(es->str, '\n');
   break;

  case 129:
  case 131:
  case 128:

   break;
 }
}
