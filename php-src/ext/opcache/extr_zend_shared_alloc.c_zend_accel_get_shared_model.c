
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* g_shared_model ;

const char *zend_accel_get_shared_model(void)
{
 return g_shared_model;
}
