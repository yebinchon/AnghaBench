
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int may_start_select (char) ;
 int n_start_visual_mode (char) ;

void
start_selection()
{

    may_start_select('k');
    n_start_visual_mode('v');
}
