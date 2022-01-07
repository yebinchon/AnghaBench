
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int key_type ;
typedef int inifile ;


 int inifile_delete_replace_append (int *,int const*,int *,int ,int *) ;

int inifile_delete_ex(inifile *dba, const key_type *key, zend_bool *found)
{
 return inifile_delete_replace_append(dba, key, ((void*)0), 0, found);
}
