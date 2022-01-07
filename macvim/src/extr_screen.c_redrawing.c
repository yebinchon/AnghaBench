
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeyTyped ;
 int RedrawingDisabled ;
 scalar_t__ char_avail () ;
 int do_redraw ;
 scalar_t__ p_lz ;

int
redrawing()
{
    return (!RedrawingDisabled
         && !(p_lz && char_avail() && !KeyTyped && !do_redraw));
}
