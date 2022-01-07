
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ valid_gbk_head (unsigned int const) ;

__attribute__((used)) static unsigned int mysqlnd_mbcharlen_gbk(const unsigned int gbk)
{
 return (valid_gbk_head(gbk) ? 2 : 1);
}
