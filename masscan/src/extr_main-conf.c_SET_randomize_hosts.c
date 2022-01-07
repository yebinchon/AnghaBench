
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {scalar_t__ echo; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;

__attribute__((used)) static int SET_randomize_hosts(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    UNUSEDPARM(value);
    if (masscan->echo) {

        return 0;
    }
    return CONF_OK;
}
