
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_PEEK_LAST ;
 unsigned long get_error_values (int ,char const**,int*,char const**,char const**,int*) ;

unsigned long ERR_peek_last_error_all(const char **file, int *line,
                                      const char **func,
                                      const char **data, int *flags)
{
    return get_error_values(EV_PEEK_LAST, file, line, func, data, flags);
}
