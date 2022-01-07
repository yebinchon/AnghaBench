
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* px_crypt_des (char const*,char const*) ;
 int strcpy (char*,char*) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static char *
run_crypt_des(const char *psw, const char *salt,
     char *buf, unsigned len)
{
 char *res;

 res = px_crypt_des(psw, salt);
 if (res == ((void*)0) || strlen(res) > len - 1)
  return ((void*)0);
 strcpy(buf, res);
 return buf;
}
