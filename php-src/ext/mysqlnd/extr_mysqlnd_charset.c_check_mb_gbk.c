
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int end ;


 scalar_t__ valid_gbk_head (char const) ;
 scalar_t__ valid_gbk_tail (char const) ;

__attribute__((used)) static unsigned int check_mb_gbk(const char * const start, const char * const end)
{
 return (valid_gbk_head(start[0]) && (end) - (start) > 1 && valid_gbk_tail(start[1])) ? 2 : 0;
}
