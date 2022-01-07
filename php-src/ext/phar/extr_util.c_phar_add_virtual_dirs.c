
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_3__ {int virtual_dirs; } ;
typedef TYPE_1__ phar_archive_data ;


 int GC_FLAGS (int *) ;
 int GC_PERSISTENT ;
 int * zend_hash_add_empty_element (int *,int *) ;
 char* zend_memrchr (char*,char,size_t) ;
 int * zend_string_init (char*,size_t,int ) ;
 int * zend_string_init_interned (char*,size_t,int) ;
 int zend_string_release (int *) ;

void phar_add_virtual_dirs(phar_archive_data *phar, char *filename, size_t filename_len)
{
 const char *s;
 zend_string *str;
 zval *ret;

 while ((s = zend_memrchr(filename, '/', filename_len))) {
  filename_len = s - filename;
  if (!filename_len) {
   break;
  }
  if (GC_FLAGS(&phar->virtual_dirs) & GC_PERSISTENT) {
   str = zend_string_init_interned(filename, filename_len, 1);
  } else {
   str = zend_string_init(filename, filename_len, 0);
  }
  ret = zend_hash_add_empty_element(&phar->virtual_dirs, str);
  zend_string_release(str);
  if (ret == ((void*)0)) {
   break;
  }
 }
}
