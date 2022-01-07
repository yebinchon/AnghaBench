
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_strlcpy (char*,char*,size_t) ;
 char* strerror (int) ;
 char* strerror_r (int,char*,size_t) ;
 int strerror_s (char*,size_t,int) ;

int openssl_strerror_r(int errnum, char *buf, size_t buflen)
{
    char *err;


    if (buflen < 2)
        return 0;
    err = strerror(errnum);

    if (err == ((void*)0))
        return 0;
    OPENSSL_strlcpy(buf, err, buflen);
    return 1;

}
