
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {scalar_t__ is_noreset; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,char*) ;
 scalar_t__ parseBoolean (char const*) ;

__attribute__((used)) static int SET_noreset(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    if (masscan->echo) {
        if (masscan->is_noreset || masscan->echo_all)
            fprintf(masscan->echo, "noreset = %s\n", masscan->is_noreset?"true":"false");
        return 0;
    }
    masscan->is_noreset = parseBoolean(value);
    return CONF_OK;
}
