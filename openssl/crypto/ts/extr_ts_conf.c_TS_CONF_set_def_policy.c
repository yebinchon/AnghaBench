
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int CONF ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ENV_DEFAULT_POLICY ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int * OBJ_txt2obj (char const*,int ) ;
 int TS_RESP_CTX_set_def_policy (int *,int *) ;
 int ts_CONF_invalid (char const*,int ) ;
 int ts_CONF_lookup_fail (char const*,int ) ;

int TS_CONF_set_def_policy(CONF *conf, const char *section,
                           const char *policy, TS_RESP_CTX *ctx)
{
    int ret = 0;
    ASN1_OBJECT *policy_obj = ((void*)0);

    if (policy == ((void*)0))
        policy = NCONF_get_string(conf, section, ENV_DEFAULT_POLICY);
    if (policy == ((void*)0)) {
        ts_CONF_lookup_fail(section, ENV_DEFAULT_POLICY);
        goto err;
    }
    if ((policy_obj = OBJ_txt2obj(policy, 0)) == ((void*)0)) {
        ts_CONF_invalid(section, ENV_DEFAULT_POLICY);
        goto err;
    }
    if (!TS_RESP_CTX_set_def_policy(ctx, policy_obj))
        goto err;

    ret = 1;
 err:
    ASN1_OBJECT_free(policy_obj);
    return ret;
}
