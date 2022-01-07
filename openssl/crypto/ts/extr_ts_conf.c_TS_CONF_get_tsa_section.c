
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int BASE_SECTION ;
 int ENV_DEFAULT_TSA ;
 char* NCONF_get_string (int *,int ,int ) ;
 int ts_CONF_lookup_fail (int ,int ) ;

const char *TS_CONF_get_tsa_section(CONF *conf, const char *section)
{
    if (!section) {
        section = NCONF_get_string(conf, BASE_SECTION, ENV_DEFAULT_TSA);
        if (!section)
            ts_CONF_lookup_fail(BASE_SECTION, ENV_DEFAULT_TSA);
    }
    return section;
}
