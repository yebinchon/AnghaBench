
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_STR_P (int *) ;
 int pefree (int ,int) ;

void fcgi_free_mgmt_var_cb(zval *zv)
{
 pefree(Z_STR_P(zv), 1);
}
