
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MD5_PASSWD_LEN ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int pg_md5_encrypt (char const*,char const*,int ,char*) ;
 int strlen (char const*) ;

char *
PQencryptPassword(const char *passwd, const char *user)
{
 char *crypt_pwd;

 crypt_pwd = malloc(MD5_PASSWD_LEN + 1);
 if (!crypt_pwd)
  return ((void*)0);

 if (!pg_md5_encrypt(passwd, user, strlen(user), crypt_pwd))
 {
  free(crypt_pwd);
  return ((void*)0);
 }

 return crypt_pwd;
}
