
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* load ) (TYPE_2__*,char const*,long*) ;} ;
typedef TYPE_2__ CONF ;


 int CONF_F_NCONF_LOAD ;
 int CONF_R_NO_CONF ;
 int CONFerr (int ,int ) ;
 int stub1 (TYPE_2__*,char const*,long*) ;

int NCONF_load(CONF *conf, const char *file, long *eline)
{
    if (conf == ((void*)0)) {
        CONFerr(CONF_F_NCONF_LOAD, CONF_R_NO_CONF);
        return 0;
    }

    return conf->meth->load(conf, file, eline);
}
