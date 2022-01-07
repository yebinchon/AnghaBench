
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ linenr_T ;


 int FALSE ;
 int redrawWinline (scalar_t__,int ) ;
 scalar_t__ spell_redraw_lnum ;

__attribute__((used)) static void
check_spell_redraw()
{
    if (spell_redraw_lnum != 0)
    {
 linenr_T lnum = spell_redraw_lnum;

 spell_redraw_lnum = 0;
 redrawWinline(lnum, FALSE);
    }
}
