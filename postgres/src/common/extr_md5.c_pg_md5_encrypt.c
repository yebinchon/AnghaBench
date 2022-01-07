
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int pg_md5_hash (char*,size_t,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

bool
pg_md5_encrypt(const char *passwd, const char *salt, size_t salt_len,
      char *buf)
{
 size_t passwd_len = strlen(passwd);


 char *crypt_buf = malloc(passwd_len + salt_len + 1);
 bool ret;

 if (!crypt_buf)
  return 0;





 memcpy(crypt_buf, passwd, passwd_len);
 memcpy(crypt_buf + passwd_len, salt, salt_len);

 strcpy(buf, "md5");
 ret = pg_md5_hash(crypt_buf, passwd_len + salt_len, buf + 3);

 free(crypt_buf);

 return ret;
}
