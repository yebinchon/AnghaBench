
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
typedef TYPE_1__* StringInfo ;


 int INTALIGN (int) ;
 int appendStringInfoCharMacro (TYPE_1__*,int ) ;

__attribute__((used)) static void
alignStringInfoInt(StringInfo buf)
{
 switch (INTALIGN(buf->len) - buf->len)
 {
  case 3:
   appendStringInfoCharMacro(buf, 0);

  case 2:
   appendStringInfoCharMacro(buf, 0);

  case 1:
   appendStringInfoCharMacro(buf, 0);

  default:
   break;
 }
}
