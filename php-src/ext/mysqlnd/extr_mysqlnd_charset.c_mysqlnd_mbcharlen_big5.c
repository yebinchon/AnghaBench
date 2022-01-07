
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ valid_big5head (unsigned int const) ;

__attribute__((used)) static unsigned int mysqlnd_mbcharlen_big5(const unsigned int big5)
{
 return (valid_big5head(big5)) ? 2 : 1;
}
