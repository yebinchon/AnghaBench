
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _crypt_blowfish_rn (char const*,char const*,char*,unsigned int) ;

__attribute__((used)) static char *
run_crypt_bf(const char *psw, const char *salt,
    char *buf, unsigned len)
{
 char *res;

 res = _crypt_blowfish_rn(psw, salt, buf, len);
 return res;
}
