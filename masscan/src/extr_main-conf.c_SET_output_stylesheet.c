
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* stylesheet; scalar_t__ format; } ;
struct Masscan {TYPE_1__ output; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 scalar_t__ Output_XML ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,char*) ;
 int strcpy_s (char*,int,char const*) ;

__attribute__((used)) static int SET_output_stylesheet(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    if (masscan->echo) {
        if (masscan->output.stylesheet[0] || masscan->echo_all)
            fprintf(masscan->echo, "stylesheet = %s\n", masscan->output.stylesheet);
        return 0;
    }

    if (masscan->output.format == 0)
        masscan->output.format = Output_XML;

    strcpy_s(masscan->output.stylesheet, sizeof(masscan->output.stylesheet), value);
    return CONF_OK;
}
