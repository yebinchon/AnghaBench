
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *skip_n_lines(char *text, int lines)
{
    while (text && lines > 0) {
        char *next = strchr(text, '\n');
        text = next ? next + 1 : ((void*)0);
        lines--;
    }
    return text;
}
