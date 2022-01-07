
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CTLOG ;
typedef int CONF ;


 int CTLOG_new_from_base64 (int **,char*,char const*) ;
 int CT_F_CTLOG_NEW_FROM_CONF ;
 int CT_R_LOG_CONF_MISSING_DESCRIPTION ;
 int CT_R_LOG_CONF_MISSING_KEY ;
 int CTerr (int ,int ) ;
 void* NCONF_get_string (int const*,char const*,char*) ;

__attribute__((used)) static int ctlog_new_from_conf(CTLOG **ct_log, const CONF *conf, const char *section)
{
    const char *description = NCONF_get_string(conf, section, "description");
    char *pkey_base64;

    if (description == ((void*)0)) {
        CTerr(CT_F_CTLOG_NEW_FROM_CONF, CT_R_LOG_CONF_MISSING_DESCRIPTION);
        return 0;
    }

    pkey_base64 = NCONF_get_string(conf, section, "key");
    if (pkey_base64 == ((void*)0)) {
        CTerr(CT_F_CTLOG_NEW_FROM_CONF, CT_R_LOG_CONF_MISSING_KEY);
        return 0;
    }

    return CTLOG_new_from_base64(ct_log, pkey_base64, description);
}
