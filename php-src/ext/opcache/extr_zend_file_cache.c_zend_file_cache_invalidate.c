
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int efree (char*) ;
 char* zend_file_cache_get_bin_file_path (int *) ;
 int zend_file_cache_unlink (char*) ;

void zend_file_cache_invalidate(zend_string *full_path)
{
 char *filename;

 filename = zend_file_cache_get_bin_file_path(full_path);

 zend_file_cache_unlink(filename);
 efree(filename);
}
