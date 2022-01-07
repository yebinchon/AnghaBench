
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inf_value {int value; TYPE_1__* section; } ;
struct TYPE_2__ {int file; } ;


 char* expand_variables (int ,int ) ;

char *inf_value_get_value(struct inf_value *value)
{
    return expand_variables(value->section->file, value->value);
}
