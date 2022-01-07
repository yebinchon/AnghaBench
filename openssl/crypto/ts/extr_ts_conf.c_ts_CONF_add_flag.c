
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int CONF ;


 int ENV_VALUE_NO ;
 int ENV_VALUE_YES ;
 char* NCONF_get_string (int *,char const*,char const*) ;
 int TS_RESP_CTX_add_flags (int *,int) ;
 scalar_t__ strcmp (char const*,int ) ;
 int ts_CONF_invalid (char const*,char const*) ;

__attribute__((used)) static int ts_CONF_add_flag(CONF *conf, const char *section,
                            const char *field, int flag, TS_RESP_CTX *ctx)
{
    const char *value = NCONF_get_string(conf, section, field);

    if (value) {
        if (strcmp(value, ENV_VALUE_YES) == 0)
            TS_RESP_CTX_add_flags(ctx, flag);
        else if (strcmp(value, ENV_VALUE_NO) != 0) {
            ts_CONF_invalid(section, field);
            return 0;
        }
    }

    return 1;
}
