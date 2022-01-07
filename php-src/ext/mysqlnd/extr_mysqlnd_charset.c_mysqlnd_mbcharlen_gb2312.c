
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ valid_gb2312_head (unsigned int const) ;

__attribute__((used)) static unsigned int mysqlnd_mbcharlen_gb2312(const unsigned int gb)
{
 return (valid_gb2312_head(gb)) ? 2 : 1;
}
