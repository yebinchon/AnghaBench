
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
struct sockaddr_un {char* sun_path; } ;
typedef int ser_context ;


 size_t ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int do_from_zval_err (int *,char*,...) ;
 int memcpy (char**,int ,size_t) ;
 int zend_tmp_string_release (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static void from_zval_write_sun_path(const zval *path, char *sockaddr_un_c, ser_context *ctx)
{
 zend_string *path_str, *tmp_path_str;
 struct sockaddr_un *saddr = (struct sockaddr_un*)sockaddr_un_c;

 path_str = zval_get_tmp_string((zval *) path, &tmp_path_str);




 if (ZSTR_LEN(path_str) == 0) {
  do_from_zval_err(ctx, "%s", "the path is cannot be empty");
  zend_tmp_string_release(tmp_path_str);
  return;
 }
 if (ZSTR_LEN(path_str) >= sizeof(saddr->sun_path)) {
  do_from_zval_err(ctx, "the path is too long, the maximum permitted "
    "length is %zd", sizeof(saddr->sun_path) - 1);
  zend_tmp_string_release(tmp_path_str);
  return;
 }

 memcpy(&saddr->sun_path, ZSTR_VAL(path_str), ZSTR_LEN(path_str));
 saddr->sun_path[ZSTR_LEN(path_str)] = '\0';

 zend_tmp_string_release(tmp_path_str);
}
