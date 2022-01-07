
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ BIO_write_ex (int *,char const*,size_t,size_t*) ;

__attribute__((used)) static int write_string(BIO *b, const char *buf, size_t n)
{
    size_t m;

    return BIO_write_ex(b, buf, n, &m) != 0 && m == n;
}
