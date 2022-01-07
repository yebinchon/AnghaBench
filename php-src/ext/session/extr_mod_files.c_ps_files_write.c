
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_4__ {scalar_t__ fd; size_t st_size; } ;
typedef TYPE_1__ ps_files ;


 int E_WARNING ;
 int FAILURE ;
 int SEEK_SET ;
 int SUCCESS ;
 unsigned int UINT_MAX ;
 size_t ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int _write (scalar_t__,char*,unsigned int) ;
 int errno ;
 int ftruncate (scalar_t__,int ) ;
 int lseek (scalar_t__,int ,int ) ;
 int php_error_docref (int *,int ,char*,...) ;
 int php_ignore_value (int ) ;
 int ps_files_open (TYPE_1__*,char*) ;
 size_t pwrite (scalar_t__,char*,size_t,int ) ;
 int strerror (int ) ;
 size_t write (scalar_t__,char*,size_t) ;

__attribute__((used)) static int ps_files_write(ps_files *data, zend_string *key, zend_string *val)
{
 size_t n = 0;




 ps_files_open(data, ZSTR_VAL(key));
 if (data->fd < 0) {
  return FAILURE;
 }


 if (ZSTR_LEN(val) < data->st_size) {
  php_ignore_value(ftruncate(data->fd, 0));
 }




 lseek(data->fd, 0, SEEK_SET);
 n = write(data->fd, ZSTR_VAL(val), ZSTR_LEN(val));



 if (n != ZSTR_LEN(val)) {
  if (n == (size_t)-1) {
   php_error_docref(((void*)0), E_WARNING, "write failed: %s (%d)", strerror(errno), errno);
  } else {
   php_error_docref(((void*)0), E_WARNING, "write wrote less bytes than requested");
  }
  return FAILURE;
 }

 return SUCCESS;
}
