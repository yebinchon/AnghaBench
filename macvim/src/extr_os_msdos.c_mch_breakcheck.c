
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int TRUE ;
 scalar_t__ ctrlc_pressed ;
 int got_int ;

void
mch_breakcheck(void)
{
    if (ctrlc_pressed)
    {
 ctrlc_pressed = FALSE;
 got_int = TRUE;
    }
}
