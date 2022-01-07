
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; } ;
typedef TYPE_1__ PAIR ;



__attribute__((used)) static char *take_value(PAIR *pp)
{
    char *p = pp->value;

    pp->value = ((void*)0);
    return p;
}
