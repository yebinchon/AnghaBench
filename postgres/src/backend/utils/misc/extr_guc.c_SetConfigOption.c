
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;
typedef int GucContext ;


 int GUC_ACTION_SET ;
 int set_config_option (char const*,char const*,int ,int ,int ,int,int ,int) ;

void
SetConfigOption(const char *name, const char *value,
    GucContext context, GucSource source)
{
 (void) set_config_option(name, value, context, source,
        GUC_ACTION_SET, 1, 0, 0);
}
