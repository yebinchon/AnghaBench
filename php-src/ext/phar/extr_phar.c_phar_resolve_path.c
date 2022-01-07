
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int * phar_find_in_include_path (char*,size_t,int *) ;

__attribute__((used)) static zend_string *phar_resolve_path(const char *filename, size_t filename_len)
{
 return phar_find_in_include_path((char *) filename, filename_len, ((void*)0));
}
