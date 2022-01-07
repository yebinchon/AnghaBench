
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void dimension_remove_pipe_comma(char *str) {
    while(*str) {
        if(*str == '|' || *str == ',') *str = ' ';

        str++;
    }
}
