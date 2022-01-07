
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* value; } ;
typedef TYPE_1__ strbuffer_t ;



const char *strbuffer_value(const strbuffer_t *strbuff)
{
    return strbuff->value;
}
