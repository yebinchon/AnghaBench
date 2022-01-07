
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int start ;
struct TYPE_5__ {scalar_t__ name; char valtype; } ;
typedef TYPE_1__ OPTIONS ;


 int MAX_OPT_HELP_WIDTH ;
 int OPENSSL_assert (int) ;
 scalar_t__ OPT_HELP_STR ;
 scalar_t__ OPT_MORE_STR ;
 scalar_t__ OPT_SECTION_STR ;
 int opt_print (TYPE_1__ const*,int) ;
 int opt_printf_stderr (char*,int ) ;
 int prog ;
 scalar_t__ strlen (scalar_t__) ;
 scalar_t__ valtype2param (TYPE_1__ const*) ;

void opt_help(const OPTIONS *list)
{
    const OPTIONS *o;
    int i;
    int standard_prolog;
    int width = 5;
    char start[80 + 1];


    standard_prolog = list[0].name != OPT_HELP_STR;


    for (o = list; o->name; o++) {
        if (o->name == OPT_MORE_STR)
            continue;
        i = 2 + (int)strlen(o->name);
        if (o->valtype != '-')
            i += 1 + strlen(valtype2param(o));
        if (i < MAX_OPT_HELP_WIDTH && i > width)
            width = i;
        OPENSSL_assert(i < (int)sizeof(start));
    }

    if (standard_prolog) {
        opt_printf_stderr("Usage: %s [options]\n", prog);
        if (list[0].name != OPT_SECTION_STR)
            opt_printf_stderr("Valid options are:\n", prog);
    }


    for (o = list; o->name; o++) {
        opt_print(o, width);
    }
}
