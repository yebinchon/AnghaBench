
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 size_t INT_MAX ;
 int _dopr (char**,int *,size_t*,size_t*,int*,char const*,int ) ;

int BIO_vsnprintf(char *buf, size_t n, const char *format, va_list args)
{
    size_t retlen;
    int truncated;

    if (!_dopr(&buf, ((void*)0), &n, &retlen, &truncated, format, args))
        return -1;

    if (truncated)






        return -1;
    else
        return (retlen <= INT_MAX) ? (int)retlen : -1;
}
