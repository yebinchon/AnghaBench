
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void eat_ws(char **src)
{
    while (1) {
        char c = **src;
        if (c != ' ' && c != '\t' && c != '\n' && c != '\r')
            return;
        *src += 1;
    }
}
