
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_serial_cb ;
typedef int TS_RESP_CTX ;
typedef int CONF ;


 int ENV_SERIAL ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int TS_RESP_CTX_set_serial_cb (int *,int ,char*) ;
 int ts_CONF_lookup_fail (char const*,int ) ;

int TS_CONF_set_serial(CONF *conf, const char *section, TS_serial_cb cb,
                       TS_RESP_CTX *ctx)
{
    int ret = 0;
    char *serial = NCONF_get_string(conf, section, ENV_SERIAL);
    if (!serial) {
        ts_CONF_lookup_fail(section, ENV_SERIAL);
        goto err;
    }
    TS_RESP_CTX_set_serial_cb(ctx, cb, serial);

    ret = 1;
 err:
    return ret;
}
