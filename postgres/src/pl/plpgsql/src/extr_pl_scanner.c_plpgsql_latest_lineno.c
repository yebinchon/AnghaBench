
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_line_num ;

int
plpgsql_latest_lineno(void)
{
 return cur_line_num;
}
