
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fe_msgbuf; } ;
typedef TYPE_1__* CopyState ;


 int appendStringInfoCharMacro (int ,char) ;

__attribute__((used)) static void
CopySendChar(CopyState cstate, char c)
{
 appendStringInfoCharMacro(cstate->fe_msgbuf, c);
}
