
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_POP ;
 unsigned long get_error_values (int ,char const**,int*,int *,char const**,int*) ;

unsigned long ERR_get_error_line_data(const char **file, int *line,
                                      const char **data, int *flags)
{
    return get_error_values(EV_POP, file, line, ((void*)0), data, flags);
}
