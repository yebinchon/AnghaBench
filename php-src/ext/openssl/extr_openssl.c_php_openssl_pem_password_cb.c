
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct php_openssl_pem_password {int len; int * key; } ;


 int memcpy (char*,int *,int) ;

__attribute__((used)) static int php_openssl_pem_password_cb(char *buf, int size, int rwflag, void *userdata)
{
 struct php_openssl_pem_password *password = userdata;

 if (password == ((void*)0) || password->key == ((void*)0)) {
  return -1;
 }

 size = (password->len > size) ? size : password->len;
 memcpy(buf, password->key, size);

 return size;
}
