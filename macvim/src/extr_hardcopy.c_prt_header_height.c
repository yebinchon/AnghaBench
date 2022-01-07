
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int number; scalar_t__ present; } ;


 size_t OPT_PRINT_HEADERHEIGHT ;
 TYPE_1__* printer_opts ;

int
prt_header_height()
{
    if (printer_opts[OPT_PRINT_HEADERHEIGHT].present)
 return printer_opts[OPT_PRINT_HEADERHEIGHT].number;
    return 2;
}
