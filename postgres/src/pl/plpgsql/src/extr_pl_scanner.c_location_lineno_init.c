
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_line_end ;
 int cur_line_num ;
 int cur_line_start ;
 int scanorig ;
 int strchr (int ,char) ;

__attribute__((used)) static void
location_lineno_init(void)
{
 cur_line_start = scanorig;
 cur_line_num = 1;

 cur_line_end = strchr(cur_line_start, '\n');
}
