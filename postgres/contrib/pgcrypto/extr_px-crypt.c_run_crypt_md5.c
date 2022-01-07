
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* px_crypt_md5 (char const*,char const*,char*,unsigned int) ;

__attribute__((used)) static char *
run_crypt_md5(const char *psw, const char *salt,
     char *buf, unsigned len)
{
 char *res;

 res = px_crypt_md5(psw, salt, buf, len);
 return res;
}
