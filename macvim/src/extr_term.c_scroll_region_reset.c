
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Columns ;
 scalar_t__ NUL ;
 int OUT_STR (int ) ;
 scalar_t__ Rows ;
 scalar_t__ T_CS ;
 scalar_t__* T_CSV ;
 int screen_start () ;
 int tgoto (char*,int,int ) ;

void
scroll_region_reset()
{
    OUT_STR(tgoto((char *)T_CS, (int)Rows - 1, 0));




    screen_start();
}
