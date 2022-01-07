
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* value; } ;
typedef TYPE_1__ php_dir_entry ;
struct TYPE_5__ {int config; } ;
typedef TYPE_2__ php_conf_rec ;


 TYPE_1__* zend_hash_str_find_ptr (int *,char*,size_t) ;

char *get_php_config(void *conf, char *name, size_t name_len)
{
 php_conf_rec *d = conf;
 php_dir_entry *pe;

 if ((pe = zend_hash_str_find_ptr(&d->config, name, name_len)) != ((void*)0)) {
  return pe->value;
 }

 return "";
}
