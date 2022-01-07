
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TTYM_SGR ;
 scalar_t__ TTYM_URXVT ;
 scalar_t__ TTYM_XTERM ;
 scalar_t__ TTYM_XTERM2 ;
 scalar_t__ ttym_flags ;

int
use_xterm_mouse()
{
    if (ttym_flags == TTYM_SGR)
 return 4;
    if (ttym_flags == TTYM_URXVT)
 return 3;
    if (ttym_flags == TTYM_XTERM2)
 return 2;
    if (ttym_flags == TTYM_XTERM)
 return 1;
    return 0;
}
