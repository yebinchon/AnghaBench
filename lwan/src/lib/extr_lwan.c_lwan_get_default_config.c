
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_config {int dummy; } ;


 struct lwan_config const default_config ;

const struct lwan_config *lwan_get_default_config(void)
{
    return &default_config;
}
