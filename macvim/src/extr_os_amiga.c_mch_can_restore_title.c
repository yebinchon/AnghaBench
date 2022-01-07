
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * wb_window ;

int
mch_can_restore_title()
{
    return (wb_window != ((void*)0));
}
