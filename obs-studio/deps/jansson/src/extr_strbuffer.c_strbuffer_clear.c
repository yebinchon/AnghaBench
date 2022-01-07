
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; scalar_t__ length; } ;
typedef TYPE_1__ strbuffer_t ;



void strbuffer_clear(strbuffer_t *strbuff)
{
    strbuff->length = 0;
    strbuff->value[0] = '\0';
}
