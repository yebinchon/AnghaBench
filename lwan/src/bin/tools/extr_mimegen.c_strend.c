
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *strend(char *str, char ch)
{
    str = strchr(str, ch);
    if (str) {
        *str = '\0';
        return str + 1;
    }
    return ((void*)0);
}
