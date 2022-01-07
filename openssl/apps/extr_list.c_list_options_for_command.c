
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* help; int * name; } ;
struct TYPE_4__ {char* name; char valtype; } ;
typedef TYPE_1__ OPTIONS ;
typedef TYPE_2__ FUNCTION ;


 int BIO_printf (int ,char*,...) ;
 char* OPT_HELP_STR ;
 char* OPT_MORE_STR ;
 char* OPT_SECTION_STR ;
 int bio_err ;
 int bio_out ;
 TYPE_2__* functions ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static void list_options_for_command(const char *command)
{
    const FUNCTION *fp;
    const OPTIONS *o;

    for (fp = functions; fp->name != ((void*)0); fp++)
        if (strcmp(fp->name, command) == 0)
            break;
    if (fp->name == ((void*)0)) {
        BIO_printf(bio_err, "Invalid command '%s'; type \"help\" for a list.\n",
                command);
        return;
    }

    if ((o = fp->help) == ((void*)0))
        return;

    for ( ; o->name != ((void*)0); o++) {
        char c = o->valtype;

        if (o->name == OPT_HELP_STR
                || o->name == OPT_MORE_STR
                || o->name == OPT_SECTION_STR
                || o->name[0] == '\0')
            continue;
        BIO_printf(bio_out, "%s %c\n", o->name, c == '\0' ? '-' : c);
    }

    BIO_printf(bio_out, "- -\n");
}
