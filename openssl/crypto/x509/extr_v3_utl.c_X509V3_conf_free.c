
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* section; struct TYPE_4__* value; struct TYPE_4__* name; } ;
typedef TYPE_1__ CONF_VALUE ;


 int OPENSSL_free (TYPE_1__*) ;

void X509V3_conf_free(CONF_VALUE *conf)
{
    if (!conf)
        return;
    OPENSSL_free(conf->name);
    OPENSSL_free(conf->value);
    OPENSSL_free(conf->section);
    OPENSSL_free(conf);
}
