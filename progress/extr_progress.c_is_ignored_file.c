
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ignore_file_list ;
 int ignore_file_list_cnt ;
 int strcmp (int ,char*) ;

signed char is_ignored_file(char *str)
{
int i;
for (i = 0 ; i < ignore_file_list_cnt ; i++)
    if (!strcmp(ignore_file_list[i], str))
        return 1;
return 0;
}
