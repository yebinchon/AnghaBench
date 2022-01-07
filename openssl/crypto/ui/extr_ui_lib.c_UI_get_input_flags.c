
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int input_flags; } ;
typedef TYPE_1__ UI_STRING ;



int UI_get_input_flags(UI_STRING *uis)
{
    return uis->input_flags;
}
