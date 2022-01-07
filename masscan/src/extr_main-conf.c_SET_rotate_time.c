
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int timeout; } ;
struct TYPE_3__ {TYPE_2__ rotate; } ;
struct Masscan {TYPE_1__ output; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,unsigned int) ;
 scalar_t__ parseTime (char const*) ;

__attribute__((used)) static int SET_rotate_time(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    if (masscan->echo) {
        if (masscan->output.rotate.timeout || masscan->echo_all)
            fprintf(masscan->echo, "rotate = %u\n", masscan->output.rotate.timeout);
        return 0;
    }
    masscan->output.rotate.timeout = (unsigned)parseTime(value);
    return CONF_OK;
}
