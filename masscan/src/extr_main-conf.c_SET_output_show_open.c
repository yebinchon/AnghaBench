
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_show_open; scalar_t__ is_show_host; scalar_t__ is_show_closed; } ;
struct Masscan {TYPE_1__ output; scalar_t__ echo; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;

__attribute__((used)) static int SET_output_show_open(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    UNUSEDPARM(value);
    if (masscan->echo) {
        return 0;
    }

    masscan->output.is_show_open = 1;
    masscan->output.is_show_closed = 0;
    masscan->output.is_show_host = 0;
    return CONF_OK;
}
