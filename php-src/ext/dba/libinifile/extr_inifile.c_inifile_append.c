
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val_type ;
typedef int key_type ;
typedef int inifile ;


 int inifile_delete_replace_append (int *,int const*,int const*,int,int *) ;

int inifile_append(inifile *dba, const key_type *key, const val_type *value)
{
 return inifile_delete_replace_append(dba, key, value, 1, ((void*)0));
}
