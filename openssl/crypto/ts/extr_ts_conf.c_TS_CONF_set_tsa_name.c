
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int CONF ;


 int ENV_TSA_NAME ;
 int TS_TSA_NAME ;
 int ts_CONF_add_flag (int *,char const*,int ,int ,int *) ;

int TS_CONF_set_tsa_name(CONF *conf, const char *section, TS_RESP_CTX *ctx)
{
    return ts_CONF_add_flag(conf, section, ENV_TSA_NAME, TS_TSA_NAME, ctx);
}
