
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int start ;
struct TYPE_4__ {char* helpstr; char valtype; scalar_t__* name; } ;
typedef TYPE_1__ OPTIONS ;


 int MAX_OPT_HELP_WIDTH ;
 scalar_t__* OPT_HELP_STR ;
 scalar_t__* OPT_MORE_STR ;
 scalar_t__* OPT_SECTION_STR ;
 int memset (char*,char,int) ;
 int opt_printf_stderr (char const*,...) ;
 int prog ;
 int strcpy (char*,scalar_t__*) ;
 int strlen (int ) ;
 scalar_t__* valtype2param (TYPE_1__ const*) ;

void opt_print(const OPTIONS *o, int width)
{
    const char* help;
    char start[80 + 1];
    char *p;

        help = o->helpstr ? o->helpstr : "(No additional info)";
        if (o->name == OPT_HELP_STR) {
            opt_printf_stderr(help, prog);
            return;
        }
        if (o->name == OPT_SECTION_STR) {
            opt_printf_stderr("\n");
            opt_printf_stderr(help, prog);
            return;
        }


        memset(start, ' ', sizeof(start) - 1);
        start[sizeof(start) - 1] = '\0';

        if (o->name == OPT_MORE_STR) {

            start[width] = '\0';
            opt_printf_stderr("%s  %s\n", start, help);
            return;
        }


        p = start;
        *p++ = ' ';
        *p++ = '-';
        if (o->name[0])
            p += strlen(strcpy(p, o->name));
        else
            *p++ = '*';
        if (o->valtype != '-') {
            *p++ = ' ';
            p += strlen(strcpy(p, valtype2param(o)));
        }
        *p = ' ';
        if ((int)(p - start) >= MAX_OPT_HELP_WIDTH) {
            *p = '\0';
            opt_printf_stderr("%s\n", start);
            memset(start, ' ', sizeof(start));
        }
        start[width] = '\0';
        opt_printf_stderr("%s  %s\n", start, help);
}
