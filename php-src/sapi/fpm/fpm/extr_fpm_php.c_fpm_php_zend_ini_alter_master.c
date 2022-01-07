
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_4__ {scalar_t__ (* on_modify ) (TYPE_1__*,int *,int ,int ,int ,int) ;int modifiable; int * value; int mh_arg3; int mh_arg2; int mh_arg1; } ;
typedef TYPE_1__ zend_ini_entry ;


 int EG (int ) ;
 int FAILURE ;
 scalar_t__ SUCCESS ;
 int ZEND_INI_SYSTEM ;
 int ini_directives ;
 scalar_t__ stub1 (TYPE_1__*,int *,int ,int ,int ,int) ;
 TYPE_1__* zend_hash_str_find_ptr (int ,char*,int) ;
 int * zend_string_init (char*,int,int) ;
 int zend_string_release_ex (int *,int) ;

__attribute__((used)) static int fpm_php_zend_ini_alter_master(char *name, int name_length, char *new_value, int new_value_length, int mode, int stage)
{
 zend_ini_entry *ini_entry;
 zend_string *duplicate;

 if ((ini_entry = zend_hash_str_find_ptr(EG(ini_directives), name, name_length)) == ((void*)0)) {
  return FAILURE;
 }

 duplicate = zend_string_init(new_value, new_value_length, 1);

 if (!ini_entry->on_modify
   || ini_entry->on_modify(ini_entry, duplicate,
    ini_entry->mh_arg1, ini_entry->mh_arg2, ini_entry->mh_arg3, stage) == SUCCESS) {
  ini_entry->value = duplicate;

  if (mode == ZEND_INI_SYSTEM) {
   ini_entry->modifiable = mode;
  }
 } else {
  zend_string_release_ex(duplicate, 1);
 }

 return SUCCESS;
}
