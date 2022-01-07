
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __cvt (double,int,int*,int*,int,int) ;

__attribute__((used)) static inline char *php_fcvt(double value, int ndigit, int *decpt, int *sign)
{
    return(__cvt(value, ndigit, decpt, sign, 1, 1));
}
