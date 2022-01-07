
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NCONF_free (int ) ;
 int conf ;

void cleanup_tests(void)
{
    NCONF_free(conf);
}
