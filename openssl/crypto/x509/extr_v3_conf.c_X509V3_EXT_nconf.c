
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int X509V3_CTX ;
typedef int CONF ;


 int ERR_add_error_data (int,char*,char const*,char*,char const*) ;
 int OBJ_sn2nid (char const*) ;
 int X509V3_F_X509V3_EXT_NCONF ;
 int X509V3_R_ERROR_IN_EXTENSION ;
 int X509V3err (int ,int ) ;
 int * do_ext_nconf (int *,int *,int ,int,char const*) ;
 int v3_check_critical (char const**) ;
 int v3_check_generic (char const**) ;
 int * v3_generic_extension (char const*,char const*,int,int,int *) ;

X509_EXTENSION *X509V3_EXT_nconf(CONF *conf, X509V3_CTX *ctx, const char *name,
                                 const char *value)
{
    int crit;
    int ext_type;
    X509_EXTENSION *ret;
    crit = v3_check_critical(&value);
    if ((ext_type = v3_check_generic(&value)))
        return v3_generic_extension(name, value, crit, ext_type, ctx);
    ret = do_ext_nconf(conf, ctx, OBJ_sn2nid(name), crit, value);
    if (!ret) {
        X509V3err(X509V3_F_X509V3_EXT_NCONF, X509V3_R_ERROR_IN_EXTENSION);
        ERR_add_error_data(4, "name=", name, ", value=", value);
    }
    return ret;
}
