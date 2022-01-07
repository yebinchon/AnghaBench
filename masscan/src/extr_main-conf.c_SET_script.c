
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct Masscan {int is_scripting; TYPE_1__ scripting; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int SET_script(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    if (masscan->echo) {
        if ((masscan->scripting.name && masscan->scripting.name[0]) || masscan->echo_all)
            fprintf(masscan->echo, "script = %s\n", masscan->scripting.name);
        return 0;
    }
    if (value && value[0])
        masscan->is_scripting = 1;
    else
        masscan->is_scripting = 0;

    if (masscan->scripting.name)
        free(masscan->scripting.name);

    masscan->scripting.name = strdup(value);

    return CONF_OK;
}
