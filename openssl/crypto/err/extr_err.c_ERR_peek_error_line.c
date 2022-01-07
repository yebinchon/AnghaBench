
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_PEEK ;
 unsigned long get_error_values (int ,char const**,int*,int *,int *,int *) ;

unsigned long ERR_peek_error_line(const char **file, int *line)
{
    return get_error_values(EV_PEEK, file, line, ((void*)0), ((void*)0), ((void*)0));
}
