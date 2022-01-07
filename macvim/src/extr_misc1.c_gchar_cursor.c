
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ has_mbyte ;
 int mb_ptr2char (scalar_t__*) ;
 scalar_t__* ml_get_cursor () ;
 int stub1 (scalar_t__*) ;

int
gchar_cursor()
{




    return (int)*ml_get_cursor();
}
