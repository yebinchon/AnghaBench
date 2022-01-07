
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int e_salt ;
typedef int e_buf ;


 char* DES_fcrypt (char const*,char const*,char*) ;
 int OPENSSL_strlcpy (char*,char const*,int) ;
 int ascii2ebcdic (char*,char*,int ) ;
 int ebcdic2ascii (char*,char*,int) ;
 int strlen (char*) ;

char *DES_crypt(const char *buf, const char *salt)
{
    static char buff[14];


    return DES_fcrypt(buf, salt, buff);
}
