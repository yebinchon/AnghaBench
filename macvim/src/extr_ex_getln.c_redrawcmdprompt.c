
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdfirstc; int cmdindent; int cmdattr; int * cmdprompt; } ;


 int Columns ;
 scalar_t__ NUL ;
 TYPE_1__ ccline ;
 scalar_t__ cmd_silent ;
 int cmdline_row ;
 int msg_col ;
 int msg_putchar (char) ;
 int msg_puts_attr (int *,int ) ;
 int msg_row ;

__attribute__((used)) static void
redrawcmdprompt()
{
    int i;

    if (cmd_silent)
 return;
    if (ccline.cmdfirstc != NUL)
 msg_putchar(ccline.cmdfirstc);
    if (ccline.cmdprompt != ((void*)0))
    {
 msg_puts_attr(ccline.cmdprompt, ccline.cmdattr);
 ccline.cmdindent = msg_col + (msg_row - cmdline_row) * Columns;

 if (ccline.cmdfirstc != NUL)
     --ccline.cmdindent;
    }
    else
 for (i = ccline.cmdindent; i > 0; --i)
     msg_putchar(' ');
}
