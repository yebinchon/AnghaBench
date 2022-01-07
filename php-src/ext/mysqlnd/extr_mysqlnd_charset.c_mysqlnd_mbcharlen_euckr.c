
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ valid_euckr (unsigned int const) ;

__attribute__((used)) static unsigned int mysqlnd_mbcharlen_euckr(const unsigned int kr)
{
 return (valid_euckr(kr)) ? 2 : 1;
}
