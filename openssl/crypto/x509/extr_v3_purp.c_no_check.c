
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;
typedef int X509 ;



__attribute__((used)) static int no_check(const X509_PURPOSE *xp, const X509 *x, int ca)
{
    return 1;
}
