
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int CONF ;


 int ENV_CLOCK_PRECISION_DIGITS ;
 int NCONF_get_number_e (int *,char const*,int ,long*) ;
 long TS_MAX_CLOCK_PRECISION_DIGITS ;
 int TS_RESP_CTX_set_clock_precision_digits (int *,long) ;
 int ts_CONF_invalid (char const*,int ) ;

int TS_CONF_set_clock_precision_digits(CONF *conf, const char *section,
                                       TS_RESP_CTX *ctx)
{
    int ret = 0;
    long digits = 0;




    if (!NCONF_get_number_e(conf, section, ENV_CLOCK_PRECISION_DIGITS,
                            &digits))
        digits = 0;
    if (digits < 0 || digits > TS_MAX_CLOCK_PRECISION_DIGITS) {
        ts_CONF_invalid(section, ENV_CLOCK_PRECISION_DIGITS);
        goto err;
    }

    if (!TS_RESP_CTX_set_clock_precision_digits(ctx, digits))
        goto err;

    return 1;
 err:
    return ret;
}
