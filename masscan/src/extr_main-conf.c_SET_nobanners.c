
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {int is_banners; scalar_t__ echo; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int parseBoolean (char const*) ;

__attribute__((used)) static int SET_nobanners(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    if (masscan->echo) {
        return 0;
    }
    masscan->is_banners = !parseBoolean(value);
    return CONF_OK;
}
