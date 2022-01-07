
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_vfree (int ) ;
 int CONF_modules_unload (int) ;
 int NCONF_free (int ) ;
 int conf ;
 int in ;

void cleanup_tests(void)
{
    BIO_vfree(in);
    NCONF_free(conf);
    CONF_modules_unload(1);
}
