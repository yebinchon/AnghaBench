
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ CONF ;
typedef int BIO ;


 int dump_value_doall_arg ;
 int lh_CONF_VALUE_doall_BIO (int ,int ,int *) ;

__attribute__((used)) static int def_dump(const CONF *conf, BIO *out)
{
    lh_CONF_VALUE_doall_BIO(conf->data, dump_value_doall_arg, out);
    return 1;
}
