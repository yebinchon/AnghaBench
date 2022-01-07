
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int X509V3_CTX ;
typedef int CONF ;


 int OBJ_nid2sn (int) ;
 int * do_ext_nconf (int *,int *,int,int,char const*) ;
 int v3_check_critical (char const**) ;
 int v3_check_generic (char const**) ;
 int * v3_generic_extension (int ,char const*,int,int,int *) ;

X509_EXTENSION *X509V3_EXT_nconf_nid(CONF *conf, X509V3_CTX *ctx, int ext_nid,
                                     const char *value)
{
    int crit;
    int ext_type;
    crit = v3_check_critical(&value);
    if ((ext_type = v3_check_generic(&value)))
        return v3_generic_extension(OBJ_nid2sn(ext_nid),
                                    value, crit, ext_type, ctx);
    return do_ext_nconf(conf, ctx, ext_nid, crit, value);
}
