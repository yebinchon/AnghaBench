
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 scalar_t__ cmdwin_type ;
 scalar_t__ textlock ;

int
text_locked()
{




    return textlock != 0;
}
