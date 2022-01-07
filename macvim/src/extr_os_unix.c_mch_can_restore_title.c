
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int get_x11_title (int ) ;

int
mch_can_restore_title()
{
    return get_x11_title(TRUE);
}
