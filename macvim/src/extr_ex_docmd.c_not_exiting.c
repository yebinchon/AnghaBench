
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TMODE_RAW ;
 int exiting ;
 int settmode (int ) ;

void
not_exiting()
{
    exiting = FALSE;
    settmode(TMODE_RAW);
}
