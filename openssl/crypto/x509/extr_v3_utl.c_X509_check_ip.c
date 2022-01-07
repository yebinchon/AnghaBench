
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int GEN_IPADD ;
 int do_x509_check (int *,char*,size_t,unsigned int,int ,int *) ;

int X509_check_ip(X509 *x, const unsigned char *chk, size_t chklen,
                  unsigned int flags)
{
    if (chk == ((void*)0))
        return -2;
    return do_x509_check(x, (char *)chk, chklen, flags, GEN_IPADD, ((void*)0));
}
