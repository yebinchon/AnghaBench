
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* dump ) (TYPE_2__ const*,int *) ;} ;
typedef TYPE_2__ CONF ;
typedef int BIO ;


 int CONF_F_NCONF_DUMP_BIO ;
 int CONF_R_NO_CONF ;
 int CONFerr (int ,int ) ;
 int stub1 (TYPE_2__ const*,int *) ;

int NCONF_dump_bio(const CONF *conf, BIO *out)
{
    if (conf == ((void*)0)) {
        CONFerr(CONF_F_NCONF_DUMP_BIO, CONF_R_NO_CONF);
        return 0;
    }

    return conf->meth->dump(conf, out);
}
